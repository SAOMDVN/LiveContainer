# move lc to working folder
mv "$archive_path.xcarchive/Products/Applications" Payload

# sidestore support framework is only used by the +SideStore build, which is no longer produced
rm -r Payload/LiveContainer.app/Frameworks/SideStoreSupport.framework

zip -r "$scheme.ipa" "Payload" -x "._*" -x ".DS_Store" -x "__MACOSX"
