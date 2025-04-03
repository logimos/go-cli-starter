package config

import "github.com/spf13/viper"

type Config struct {
	AppName  string
	LogLevel string
}

func LoadConfig() (*Config, error) {
	viper.SetConfigName("config")
	viper.AddConfigPath(".")
	viper.AutomaticEnv()
	if err := viper.ReadInConfig(); err != nil {
		return nil, err
	}
	return &Config{
		AppName:  viper.GetString("app.name"),
		LogLevel: viper.GetString("log.level"),
	}, nil
}
