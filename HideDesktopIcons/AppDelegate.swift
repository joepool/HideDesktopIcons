//
//  AppDelegate.swift
//  HideDesktop
//
//  Created by Joe Pool on 20/08/2020.
//
import Cocoa
import Foundation
@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    var statusBarItem: NSStatusItem!

    func applicationDidFinishLaunching(_ aNotification: Notification) {

        let statusBar = NSStatusBar.system
        statusBarItem = statusBar.statusItem(
            withLength: NSStatusItem.squareLength)
        statusBarItem.button?.title = "h"

        let statusBarMenu = NSMenu(title: "Cap Status Bar Menu")
        statusBarItem.menu = statusBarMenu

        statusBarMenu.addItem(
            withTitle: "Hide Desktop Icons",
            action: #selector(AppDelegate.hideIcons),
            keyEquivalent: "")

        statusBarMenu.addItem(
            withTitle: "Show Desktop Icons",
            action: #selector(AppDelegate.showIcons),
            keyEquivalent: "")
    }


    @objc func hideIcons() {
        print("Hiding Desktop Icons")
        let task = Process();
        task.launchPath = "/bin/zsh"
        task.arguments = ["./Hide.sh"]
        task.launch()

    }
    @objc func showIcons() {
        print("Showing Desktop Icons")
        let task = Process();
        task.launchPath = "/bin/zsh"
        task.arguments = ["./Show.sh"]
        task.launch()
    }

}