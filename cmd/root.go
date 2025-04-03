package cmd

import (
	"github.com/spf13/cobra"
)

var rootCmd = &cobra.Command{
	Use:   "logimos-cli",
	Short: "Logimos CLI Starter",
	Run: func(cmd *cobra.Command, args []string) {
		err := cmd.Help()
		cobra.CheckErr(err)
	},
}

func Execute() {
	cobra.CheckErr(rootCmd.Execute())
}
