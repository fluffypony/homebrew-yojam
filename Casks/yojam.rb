cask "yojam" do
  version "1.1.2"
  sha256 "044bedf5afae7c18a1bd1bfbc82ba10db020b861c9a8e341d0c96907d6b52530"

  url "https://yoj.am/releases/Yojam-#{version}.dmg"
  name "Yojam"
  desc "Open links in whatever browser, app, or profile you need - whatever yo jam is"
  homepage "https://yoj.am/"

  livecheck do
    skip "Sparkle feed is pinned while users manually migrate to the current update key"
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Yojam.app"

  uninstall quit: [
    "com.yojam.app",
    "com.yojam.app.NativeHost",
    "com.yojam.app.SafariExtension",
    "com.yojam.app.ShareExtension",
  ]

  zap trash: [
    "~/.config/yojam",
    "~/Library/Application Support/*/*/NativeMessagingHosts/org.yojam.host.json",
    "~/Library/Application Support/*/NativeMessagingHosts/org.yojam.host.json",
    "~/Library/Application Support/Yojam",
    "~/Library/Caches/com.yojam.app",
    "~/Library/Caches/com.yojam.app.CLI",
    "~/Library/Caches/com.yojam.app.NativeHost",
    "~/Library/Caches/com.yojam.app.SafariExtension",
    "~/Library/Caches/com.yojam.app.ShareExtension",
    "~/Library/Group Containers/group.org.yojam.shared",
    "~/Library/HTTPStorages/com.yojam.app",
    "~/Library/HTTPStorages/com.yojam.app.binarycookies",
    "~/Library/Logs/Yojam",
    "~/Library/Preferences/com.yojam.app.CLI.plist",
    "~/Library/Preferences/com.yojam.app.NativeHost.plist",
    "~/Library/Preferences/com.yojam.app.plist",
    "~/Library/Preferences/com.yojam.app.SafariExtension.plist",
    "~/Library/Preferences/com.yojam.app.ShareExtension.plist",
    "~/Library/Saved Application State/com.yojam.app.savedState",
    "~/Library/WebKit/com.yojam.app",
  ]
end
