!* GDI+ support
!* Base class implementations
!* mikeduglas 2022
!* mikeduglas@yandex.ru

                              MEMBER

  INCLUDE('svcomdef.inc'), ONCE
  INCLUDE('gdiplus.inc'), ONCE
  INCLUDE('winapi.inc'), ONCE

tagGdiplusStartupInput        GROUP, TYPE
GdiplusVersion                  ULONG
DebugEventCallback              LONG  !- void* 
SuppressBackgroundThread        BOOL
SuppressExternalCodecs          BOOL
                              END

szGdiplusStartup              CSTRING('GdiplusStartup'), STATIC
szGdiplusShutdown             CSTRING('GdiplusShutdown'), STATIC
szGdipLoadImageFromFile       CSTRING('GdipLoadImageFromFile'), STATIC
szGdipLoadImageFromFileICM    CSTRING('GdipLoadImageFromFileICM'), STATIC
szGdipLoadImageFromStream     CSTRING('GdipLoadImageFromStream'), STATIC
szGdipLoadImageFromStreamICM  CSTRING('GdipLoadImageFromStreamICM'), STATIC
szGdipCloneImage              CSTRING('GdipCloneImage'), STATIC
szGdipGetImageThumbnail       CSTRING('GdipGetImageThumbnail'), STATIC
szGdipSaveImageToFile         CSTRING('GdipSaveImageToFile'), STATIC
szGdipSaveImageToStream       CSTRING('GdipSaveImageToStream'), STATIC
szGdipDisposeImage            CSTRING('GdipDisposeImage'), STATIC
szGdipGetImageWidth           CSTRING('GdipGetImageWidth'), STATIC
szGdipGetImageHeight          CSTRING('GdipGetImageHeight'), STATIC
szGdipGetImageHorizontalResolution    CSTRING('GdipGetImageHorizontalResolution'), STATIC
szGdipGetImageVerticalResolution  CSTRING('GdipGetImageVerticalResolution'), STATIC
szGdipGetImageBounds          CSTRING('GdipGetImageBounds'), STATIC
szGdipGetImageDimension       CSTRING('GdipGetImageDimension'), STATIC
szGdipGetImageType            CSTRING('GdipGetImageType'), STATIC
szGdipGetImageFlags           CSTRING('GdipGetImageFlags'), STATIC
szGdipGetImageRawFormat       CSTRING('GdipGetImageRawFormat'), STATIC
szGdipGetImagePixelFormat     CSTRING('GdipGetImagePixelFormat'), STATIC

szGdipGetPropertyCount        CSTRING('GdipGetPropertyCount'), STATIC
szGdipGetPropertyIdList       CSTRING('GdipGetPropertyIdList'), STATIC
szGdipGetPropertyItemSize     CSTRING('GdipGetPropertyItemSize'), STATIC
szGdipGetPropertyItem         CSTRING('GdipGetPropertyItem'), STATIC
szGdipSetPropertyItem         CSTRING('GdipSetPropertyItem'), STATIC
szGdipRemovePropertyItem      CSTRING('GdipRemovePropertyItem'), STATIC

szGdipGetImageEncodersSize    CSTRING('GdipGetImageEncodersSize'), STATIC
szGdipGetImageEncoders        CSTRING('GdipGetImageEncoders'), STATIC
szGdipImageRotateFlip         CSTRING('GdipImageRotateFlip'), STATIC
szGdipGetImagePaletteSize     CSTRING('GdipGetImagePaletteSize'), STATIC
szGdipGetImagePalette         CSTRING('GdipGetImagePalette'), STATIC
szGdipSetImagePalette         CSTRING('GdipSetImagePalette'), STATIC
szGdipFindFirstImageItem      CSTRING('GdipFindFirstImageItem'), STATIC
szGdipFindNextImageItem       CSTRING('GdipFindNextImageItem'), STATIC
szGGdipGetImageItemData       CSTRING('GdipGetImageItemData'), STATIC

szGdipCreateBitmapFromFile    CSTRING('GdipCreateBitmapFromFile'), STATIC
szGdipCreateBitmapFromFileICM CSTRING('GdipCreateBitmapFromFileICM'), STATIC
szGdipCreateBitmapFromStream  CSTRING('GdipCreateBitmapFromStream'), STATIC
szGdipCreateBitmapFromStreamICM   CSTRING('GdipCreateBitmapFromStreamICM'), STATIC
szGdipCreateBitmapFromScan0   CSTRING('GdipCreateBitmapFromScan0'), STATIC
szGdipCreateBitmapFromGraphics    CSTRING('GdipCreateBitmapFromGraphics'), STATIC
szGdipCreateBitmapFromGdiDib  CSTRING('GdipCreateBitmapFromGdiDib'), STATIC
szGdipCreateBitmapFromHBITMAP CSTRING('GdipCreateBitmapFromHBITMAP'), STATIC
szGdipCreateHBITMAPFromBitmap CSTRING('GdipCreateHBITMAPFromBitmap'), STATIC
szGdipCreateBitmapFromHICON   CSTRING('GdipCreateBitmapFromHICON'), STATIC
szGdipCreateHICONFromBitmap   CSTRING('GdipCreateHICONFromBitmap'), STATIC
szGdipCreateBitmapFromResource    CSTRING('GdipCreateBitmapFromResource'), STATIC
szGdipCloneBitmapArea         CSTRING('GdipCloneBitmapArea'), STATIC

szGdipGetImageGraphicsContext CSTRING('GdipGetImageGraphicsContext'), STATIC
szGdipDeleteGraphics          CSTRING('GdipDeleteGraphics'), STATIC


paGdiplusStartup              LONG, NAME('fptr_GdiplusStartup')
paGdiplusShutdown             LONG, NAME('fptr_GdiplusShutdown')
paGdipLoadImageFromFile       LONG, NAME('fptr_GdipLoadImageFromFile')
paGdipLoadImageFromFileICM    LONG, NAME('fptr_GdipLoadImageFromFileICM')
paGdipLoadImageFromStream     LONG, NAME('fptr_GdipLoadImageFromStream')
paGdipLoadImageFromStreamICM  LONG, NAME('fptr_GdipLoadImageFromStreamICM')
paGdipCloneImage              LONG, NAME('fptr_GdipCloneImage')
paGdipGetImageThumbnail       LONG, NAME('fptr_GdipGetImageThumbnail')
paGdipSaveImageToFile         LONG, NAME('fptr_GdipSaveImageToFile')
paGdipSaveImageToStream       LONG, NAME('fptr_GdipSaveImageToStream')
paGdipDisposeImage            LONG, NAME('fptr_GdipDisposeImage')
paGdipGetImageWidth           LONG, NAME('fptr_GdipGetImageWidth')
paGdipGetImageHeight          LONG, NAME('fptr_GdipGetImageHeight')
paGdipGetImageHorizontalResolution    LONG, NAME('fptr_GdipGetImageHorizontalResolution')
paGdipGetImageVerticalResolution  LONG, NAME('fptr_GdipGetImageVerticalResolution')
paGdipGetImageBounds          LONG, NAME('fptr_GdipGetImageBounds')
paGdipGetImageDimension       LONG, NAME('fptr_GdipGetImageDimension')
paGdipGetImageType            LONG, NAME('fptr_GdipGetImageType')
paGdipGetImageFlags           LONG, NAME('fptr_GdipGetImageFlags')
paGdipGetImageRawFormat       LONG, NAME('fptr_GdipGetImageRawFormat')
paGdipGetImagePixelFormat     LONG, NAME('fptr_GdipGetImagePixelFormat')

paGdipGetPropertyCount        LONG, NAME('fptr_GdipGetPropertyCount')
paGdipGetPropertyIdList       LONG, NAME('fptr_GdipGetPropertyIdList')
paGdipGetPropertyItemSize     LONG, NAME('fptr_GdipGetPropertyItemSize')
paGdipGetPropertyItem         LONG, NAME('fptr_GdipGetPropertyItem')
paGdipSetPropertyItem         LONG, NAME('fptr_GdipSetPropertyItem')
paGdipRemovePropertyItem      LONG, NAME('fptr_GdipRemovePropertyItem')

paGdipGetImageEncodersSize    LONG, NAME('fptr_GdipGetImageEncodersSize')
paGdipGetImageEncoders        LONG, NAME('fptr_GdipGetImageEncoders')
paGdipImageRotateFlip         LONG, NAME('fptr_GdipImageRotateFlip')
paGdipGetImagePaletteSize     LONG, NAME('fptr_GdipGetImagePaletteSize')
paGdipGetImagePalette         LONG, NAME('fptr_GdipGetImagePalette')
paGdipSetImagePalette         LONG, NAME('fptr_GdipSetImagePalette')
paGdipFindFirstImageItem      LONG, NAME('fptr_GdipFindFirstImageItem')
paGdipFindNextImageItem       LONG, NAME('fptr_GdipFindNextImageItem')
paGdipGetImageItemData        LONG, NAME('fptr_GdipGetImageItemData')

paGdipCreateBitmapFromFile    LONG, NAME('fptr_GdipCreateBitmapFromFile')
paGdipCreateBitmapFromFileICM LONG, NAME('fptr_GdipCreateBitmapFromFileICM')
paGdipCreateBitmapFromStream  LONG, NAME('fptr_GdipCreateBitmapFromStream')
paGdipCreateBitmapFromStreamICM   LONG, NAME('fptr_GdipCreateBitmapFromStreamICM')
paGdipCreateBitmapFromScan0   LONG, NAME('fptr_GdipCreateBitmapFromScan0')
paGdipCreateBitmapFromGraphics    LONG, NAME('fptr_GdipCreateBitmapFromGraphics')
paGdipCreateBitmapFromGdiDib  LONG, NAME('fptr_GdipCreateBitmapFromGdiDib')
paGdipCreateBitmapFromHBITMAP LONG, NAME('fptr_GdipCreateBitmapFromHBITMAP')
paGdipCreateHBITMAPFromBitmap LONG, NAME('fptr_GdipCreateHBITMAPFromBitmap')
paGdipCreateBitmapFromHICON   LONG, NAME('fptr_GdipCreateBitmapFromHICON')
paGdipCreateHICONFromBitmap   LONG, NAME('fptr_GdipCreateHICONFromBitmap')
paGdipCreateBitmapFromResource    LONG, NAME('fptr_GdipCreateBitmapFromResource')
paGdipCloneBitmapArea         LONG, NAME('fptr_GdipCloneBitmapArea')

paGdipGetImageGraphicsContext LONG, NAME('fptr_GdipGetImageGraphicsContext')
paGdipDeleteGraphics          LONG, NAME('fptr_GdipDeleteGraphics')

  MAP
    MODULE('win api')
      winapi::LoadLibrary(*CSTRING szLibFileName),HINSTANCE,PASCAL,RAW,NAME('LoadLibraryA')
      winapi::FreeLibrary(LONG hModule),BOOL,PASCAL,PROC,NAME('FreeLibrary')
      winapi::GetProcAddress(LONG hModule, *CSTRING szProcName),LONG,PASCAL,RAW,NAME('GetProcAddress')
      winapi::GetProcAddress(LONG hModule, LONG pOrdinalValue),LONG,PASCAL,RAW,NAME('GetProcAddress')
      winapi::GetLastError(),LONG,PASCAL,NAME('GetLastError')
    END
    MODULE('GdiPlus api')
      !c:\Program Files (x86)\Windows Kits\10\Include\10.0.22621.0\um\gdiplusinit.h
      gp::Startup(*ULONG pToken, LONG pInput, LONG pOutput),GpStatus,PASCAL,NAME('fptr_GdiplusStartup'),DLL
      gp::Shutdown(ULONG pToken),PASCAL,NAME('fptr_GdiplusShutdown'),DLL
      !c:\Program Files (x86)\Windows Kits\10\Include\10.0.22621.0\um\gdiplusflat.h
      gp::LoadImageFromFile(LONG pFileName, *LONG pImage),GpStatus,PASCAL,NAME('fptr_GdipLoadImageFromFile'),DLL
      gp::LoadImageFromFileICM(LONG pFileName, *LONG pImage),GpStatus,PASCAL,NAME('fptr_GdipLoadImageFromFileICM'),DLL
      gp::LoadImageFromStream(LONG pStream, *LONG pImage),GpStatus,PASCAL,NAME('fptr_GdipLoadImageFromStream'),DLL
      gp::LoadImageFromStreamICM(LONG pStream, *LONG pImage),GpStatus,PASCAL,NAME('fptr_GdipLoadImageFromStreamICM'),DLL
      gp::CloneImage(LONG pImage,*LONG pCLoneImage),GpStatus,PASCAL,NAME('fptr_GdipCloneImage'),DLL
      gp::GetImageThumbnail(LONG pImage,ULONG pThumbWidth,ULONG pThumbHeight,*LONG pThumbImage,LONG pCallback,LONG pCallbackData),GpStatus,PASCAL,NAME('fptr_GdipGetImageThumbnail'),DLL
      gp::SaveImageToFile(LONG pImage,LONG pFileName,LONG pClsidEncoder,LONG pEncoderParams),GpStatus,PASCAL,NAME('fptr_GdipSaveImageToFile'),DLL
      gp::SaveImageToStream(LONG pImage,LONG pStream,LONG pClsidEncoder,LONG pEncoderParams),GpStatus,PASCAL,NAME('fptr_GdipSaveImageToStream'),DLL
      gp::DisposeImage(LONG pImage),GpStatus,PASCAL,NAME('fptr_GdipDisposeImage'),DLL
      gp::GetImageWidth(LONG pImage, *ULONG pWidth),GpStatus,PASCAL,NAME('fptr_GdipGetImageWidth'),DLL
      gp::GetImageHeight(LONG pImage, *ULONG pHeight),GpStatus,PASCAL,NAME('fptr_GdipGetImageHeight'),DLL
      gp::GetImageHorizontalResolution(LONG pImage, *SREAL pResolution),GpStatus,PASCAL,NAME('fptr_GdipGetImageHorizontalResolution'),DLL
      gp::GetImageVerticalResolution(LONG pImage, *SREAL pResolution),GpStatus,PASCAL,NAME('fptr_GdipGetImageVerticalResolution'),DLL
      gp::GetImageBounds(LONG pImage,LONG pRect,LONG pUnit),GpStatus,PASCAL,NAME('fptr_GdipGetImageBounds'),DLL
      gp::GetImageDimension(LONG pImage,*SREAL pWidth,*SREAL pHeight),GpStatus,PASCAL,NAME('fptr_GdipGetImageDimension'),DLL
      gp::GetImageType(LONG pImage,*GpImageType pType),GpStatus,PASCAL,NAME('fptr_GdipGetImageType'),DLL
      gp::GetImageFlags(LONG pImage,*ULONG pFlags),GpStatus,PASCAL,NAME('fptr_GdipGetImageFlags'),DLL
      gp::GetImageRawFormat(LONG pImage,LONG pGuid),GpStatus,PASCAL,NAME('fptr_GdipGetImageRawFormat'),DLL
      gp::GetImagePixelFormat(LONG pImage,*GpPixelFormat pFmt),GpStatus,PASCAL,NAME('fptr_GdipGetImagePixelFormat'),DLL
      gp::GetPropertyCount(LONG pImage,*ULONG pCount),GpStatus,PASCAL,NAME('fptr_GdipGetPropertyCount'),DLL
      gp::GetPropertyIdList(LONG pImage,ULONG pCount,LONG pList),GpStatus,PASCAL,NAME('fptr_GdipGetPropertyIdList'),DLL
      gp::GetPropertyItemSize(LONG pImage,ULONG pPropId,*ULONG pSize),GpStatus,PASCAL,NAME('fptr_GdipGetPropertyItemSize'),DLL
      gp::GetPropertyItem(LONG pImage,ULONG pPropId,ULONG pSize,LONG pBuffer),GpStatus,PASCAL,NAME('fptr_GdipGetPropertyItem'),DLL
      gp::SetPropertyItem(LONG pImage,LONG pItem),GpStatus,PASCAL,NAME('fptr_GdipSetPropertyItem'),DLL
      gp::RemovePropertyItem(LONG pImage,ULONG pPropId),GpStatus,PASCAL,NAME('fptr_GdipRemovePropertyItem'),DLL
      gp::GetImageEncodersSize(*ULONG pNumEncoders,*ULONG pSize),GpStatus,PROC,PASCAL,NAME('fptr_GdipGetImageEncodersSize'),DLL
      gp::GetImageEncoders(ULONG pNumEncoders,ULONG pSize,LONG pEncoders),GpStatus,PROC,PASCAL,NAME('fptr_GdipGetImageEncoders'),DLL
      gp::ImageRotateFlip(LONG pImage,GpRotateFlipType pRfType),GpStatus,PROC,PASCAL,NAME('fptr_GdipImageRotateFlip'),DLL
      gp::GetImagePaletteSize(LONG pImage,*LONG pSize),GpStatus,PROC,PASCAL,NAME('fptr_GdipGetImagePaletteSize'),DLL
      gp::GetImagePalette(LONG pImage,LONG pPalette,LONG pSize),GpStatus,PROC,PASCAL,NAME('fptr_GdipGetImagePalette'),DLL
      gp::SetImagePalette(LONG pImage,LONG pPalette),GpStatus,PROC,PASCAL,NAME('fptr_GdipSetImagePalette'),DLL
      gp::FindFirstImageItem(LONG pImage,LONG pItem),GpStatus,PROC,PASCAL,NAME('fptr_GdipFindFirstImageItem'),DLL
      gp::FindNextImageItem(LONG pImage,LONG pItem),GpStatus,PROC,PASCAL,NAME('fptr_GdipFindNextImageItem'),DLL
      gp::GetImageItemData(LONG pImage,LONG pItem),GpStatus,PROC,PASCAL,NAME('fptr_GdipGetImageItemData'),DLL

      gp::CreateBitmapFromFile(LONG pFileName,*LONG pBitmap),GpStatus,PROC,PASCAL,NAME('fptr_GdipCreateBitmapFromFile'),DLL
      gp::CreateBitmapFromFileICM(LONG pFileName,*LONG pBitmap),GpStatus,PROC,PASCAL,NAME('fptr_GdipCreateBitmapFromFileICM'),DLL
      gp::CreateBitmapFromStream(LONG pStream,*LONG pBitmap),GpStatus,PROC,PASCAL,NAME('fptr_GdipCreateBitmapFromStream'),DLL
      gp::CreateBitmapFromScan0(LONG pWidth,LONG pheight,LONG pStride,GpPixelFormat pFormat,LONG pScan0,*LONG pBitmap),GpStatus,PROC,PASCAL,NAME('fptr_GdipCreateBitmapFromScan0'),DLL
      gp::CreateBitmapFromStreamICM(LONG pStream,*LONG pBitmap),GpStatus,PROC,PASCAL,NAME('fptr_GdipCreateBitmapFromStreamICM'),DLL
      gp::CreateBitmapFromGraphics(LONG pWidth,LONG pHeight,LONG pTarget,*LONG pBitmap),GpStatus,PROC,PASCAL,NAME('fptr_GdipCreateBitmapFromGraphics'),DLL
      gp::CreateBitmapFromGdiDib(LONG pgdiBitmapInfo,LONG gdiBitmapData,*LONG pBitmap),GpStatus,PROC,PASCAL,NAME('fptr_GdipCreateBitmapFromGdiDib'),DLL
      gp::CreateBitmapFromHBITMAP(HBITMAP phbm,HANDLE phpal,*LONG pBitmap),GpStatus,PROC,PASCAL,NAME('fptr_GdipCreateBitmapFromHBITMAP'),DLL
      gp::CreateHBITMAPFromBitmap(LONG pBitmap, *HBITMAP pHbmReturn, ULONG pBackground),GpStatus,PASCAL,NAME('fptr_GdipCreateHBITMAPFromBitmap'),DLL
      gp::CreateBitmapFromHICON(HICON pHicon,*LONG pBitmap),GpStatus,PASCAL,NAME('fptr_GdipCreateBitmapFromHICON'),DLL
      gp::CreateHICONFromBitmap(LONG pBitmap, *HICON pHicon),GpStatus,PASCAL,NAME('fptr_GdipCreateHICONFromBitmap'),DLL
      gp::CreateBitmapFromResource(HINSTANCE phInstance,LONG pBitmapName,*LONG pBitmap),GpStatus,PASCAL,NAME('fptr_GdipCreateBitmapFromResource'),DLL
      gp::CloneBitmapArea(SREAL pX, SREAL pY, SREAL pWidth, SREAL pHeight, GpPixelFormat pFormat,LONG pSrcBitmap,*LONG pDstBitmap),GpStatus,PASCAL,NAME('fptr_GdipCloneBitmapArea'),DLL

      gp::GetImageGraphicsContext(LONG pImage,*LONG pGraphics),GpStatus,PASCAL,NAME('fptr_GdipGetImageGraphicsContext'),DLL
      gp::DeleteGraphics(LONG pGraphics),GpStatus,PASCAL,NAME('fptr_GdipDeleteGraphics'),DLL
    END
    MODULE('Global memory api')
      winapi::GlobalAlloc(LONG uFlags,LONG dwBytes),HGLOBAL,PASCAL,NAME('GlobalAlloc')
      winapi::GlobalLock(HGLOBAL hMem),LONG,PASCAL,PROC,NAME('GlobalLock')
      winapi::GlobalUnlock(HGLOBAL hMem),BOOL,PASCAL,PROC,NAME('GlobalUnlock')
      winapi::GlobalFree(HGLOBAL hMem),BOOL,PASCAL,PROC,NAME('GlobalUnlock')
      winapi::memcpy(LONG lpDest,LONG lpSource,LONG nCount),LONG,PROC,NAME('_memcpy')
      winapi::CreateStreamOnHGlobal(LONG hGlobal,BOOL fDeleteOnRelease,LONG ppstm),LONG,PASCAL,PROC,NAME('CreateStreamOnHGlobal')
    END
    MODULE('C++')
      lstrlenW(LONG lpWString),SIGNED,PROC,PASCAL
    END

    GdipReportError(STRING pMethodName, GpStatus pErr),PRIVATE
    ToStream(STRING pData),LONG,PRIVATE
    GetEncoderClsid(STRING pFormat, *_CLSID pClsId),BOOL,PROC,PRIVATE
    GetFileMimeType(STRING pFileName),STRING,PRIVATE

    INCLUDE('printf.inc'), ONCE
  END

!!!region IStream types
tagSTATSTG                    GROUP, TYPE
pwcsName                        LONG !LPOLESTR
type                            ULONG
cbSize                          LIKE(_ULARGE_INTEGER)
mtime                           LIKE(_FILETIME)
ctime                           LIKE(_FILETIME)
atime                           LIKE(_FILETIME)
grfMode                         ULONG
grfLocksSupported               ULONG
clsid                           LIKE(_CLSID)
grfStateBits                    ULONG
reserved                        ULONG
                              END

STATFLAG_DEFAULT              EQUATE(0) !- Requests that the statistics include the pwcsName member of the STATSTG structure.
STATFLAG_NONAME               EQUATE(1) !- Requests that the statistics not include the pwcsName member of the STATSTG structure.
STATFLAG_NOOPEN               EQUATE(2) !- Not implemented.

!!!endregion

!!!region GdiPlus initializer
!https://www.codeproject.com/Messages/2274891/Re-GDIplus-initialization
TGdiPlusInitializer           CLASS, TYPE
hDll                            HINSTANCE, PRIVATE
bInitialized                    BOOL, PRIVATE
token                           ULONG, PRIVATE
Construct                       PROCEDURE(), PRIVATE
Destruct                        PROCEDURE(), PRIVATE
Startup                         PROCEDURE(), GpStatus, PROC, PRIVATE
Shutdown                        PROCEDURE(), PRIVATE
                              END

gpInitializer                 TGdiPlusInitializer

TGdiPlusInitializer.Construct PROCEDURE()
GP_DLLNAME                      CSTRING('Gdiplus.dll'), STATIC
  CODE
  SELF.hDll = winapi::LoadLibrary(GP_DLLNAME)
  IF SELF.hDll
    !- get procedure addresses
    paGdiplusStartup  = winapi::GetProcAddress(SELF.hDll, szGdiplusStartup)
    paGdiplusShutdown = winapi::GetProcAddress(SELF.hDll, szGdiplusShutdown)

    IF paGdiplusStartup AND paGdiplusShutdown
      SELF.bInitialized = TRUE

      paGdipLoadImageFromFile             = winapi::GetProcAddress(SELF.hDll, szGdipLoadImageFromFile)
      paGdipLoadImageFromFileICM          = winapi::GetProcAddress(SELF.hDll, szGdipLoadImageFromFileICM)
      paGdipLoadImageFromStream           = winapi::GetProcAddress(SELF.hDll, szGdipLoadImageFromStream)
      paGdipLoadImageFromStreamICM        = winapi::GetProcAddress(SELF.hDll, szGdipLoadImageFromStreamICM)
      paGdipCloneImage                    = winapi::GetProcAddress(SELF.hDll, szGdipCloneImage)
      paGdipGetImageThumbnail             = winapi::GetProcAddress(SELF.hDll, szGdipGetImageThumbnail)
      paGdipSaveImageToFile               = winapi::GetProcAddress(SELF.hDll, szGdipSaveImageToFile)
      paGdipSaveImageToStream             = winapi::GetProcAddress(SELF.hDll, szGdipSaveImageToStream)
      paGdipDisposeImage                  = winapi::GetProcAddress(SELF.hDll, szGdipDisposeImage)
      paGdipGetImageWidth                 = winapi::GetProcAddress(SELF.hDll, szGdipGetImageWidth)
      paGdipGetImageHeight                = winapi::GetProcAddress(SELF.hDll, szGdipGetImageHeight)
      paGdipGetImageHorizontalResolution  = winapi::GetProcAddress(SELF.hDll, szGdipGetImageHorizontalResolution)
      paGdipGetImageVerticalResolution    = winapi::GetProcAddress(SELF.hDll, szGdipGetImageVerticalResolution)
      paGdipGetImageBounds                = winapi::GetProcAddress(SELF.hDll, szGdipGetImageBounds)
      paGdipGetImageDimension             = winapi::GetProcAddress(SELF.hDll, szGdipGetImageDimension)
      paGdipGetImageType                  = winapi::GetProcAddress(SELF.hDll, szGdipGetImageType)
      paGdipGetImageFlags                 = winapi::GetProcAddress(SELF.hDll, szGdipGetImageFlags)
      paGdipGetImageRawFormat             = winapi::GetProcAddress(SELF.hDll, szGdipGetImageRawFormat)
      paGdipGetImagePixelFormat           = winapi::GetProcAddress(SELF.hDll, szGdipGetImagePixelFormat)
      paGdipGetPropertyCount              = winapi::GetProcAddress(SELF.hDll, szGdipGetPropertyCount)
      paGdipGetPropertyIdList             = winapi::GetProcAddress(SELF.hDll, szGdipGetPropertyIdList)
      paGdipGetPropertyItemSize           = winapi::GetProcAddress(SELF.hDll, szGdipGetPropertyItemSize)
      paGdipGetPropertyItem               = winapi::GetProcAddress(SELF.hDll, szGdipGetPropertyItem)
      paGdipSetPropertyItem               = winapi::GetProcAddress(SELF.hDll, szGdipSetPropertyItem)
      paGdipRemovePropertyItem            = winapi::GetProcAddress(SELF.hDll, szGdipRemovePropertyItem)
      
      paGdipGetImageEncodersSize          = winapi::GetProcAddress(SELF.hDll, szGdipGetImageEncodersSize)
      paGdipGetImageEncoders              = winapi::GetProcAddress(SELF.hDll, szGdipGetImageEncoders)
      paGdipImageRotateFlip               = winapi::GetProcAddress(SELF.hDll, szGdipImageRotateFlip)
      paGdipGetImagePaletteSize           = winapi::GetProcAddress(SELF.hDll, szGdipGetImagePaletteSize)
      paGdipGetImagePalette               = winapi::GetProcAddress(SELF.hDll, szGdipGetImagePalette)
      paGdipSetImagePalette               = winapi::GetProcAddress(SELF.hDll, szGdipSetImagePalette)
      
      paGdipCreateBitmapFromFile          = winapi::GetProcAddress(SELF.hDll, szGdipCreateBitmapFromFile)
      paGdipCreateBitmapFromFileICM       = winapi::GetProcAddress(SELF.hDll, szGdipCreateBitmapFromFileICM)
      paGdipCreateBitmapFromStream        = winapi::GetProcAddress(SELF.hDll, szGdipCreateBitmapFromStream)
      paGdipCreateBitmapFromStreamICM     = winapi::GetProcAddress(SELF.hDll, szGdipCreateBitmapFromStreamICM)
      paGdipCreateBitmapFromScan0         = winapi::GetProcAddress(SELF.hDll, szGdipCreateBitmapFromScan0)
      paGdipCreateBitmapFromGraphics      = winapi::GetProcAddress(SELF.hDll, szGdipCreateBitmapFromGraphics)
      paGdipCreateBitmapFromGdiDib        = winapi::GetProcAddress(SELF.hDll, szGdipCreateBitmapFromGdiDib)
      paGdipCreateBitmapFromHBITMAP       = winapi::GetProcAddress(SELF.hDll, szGdipCreateBitmapFromHBITMAP)
      paGdipCreateHBITMAPFromBitmap       = winapi::GetProcAddress(SELF.hDll, szGdipCreateHBITMAPFromBitmap)
      paGdipCreateBitmapFromHICON         = winapi::GetProcAddress(SELF.hDll, szGdipCreateBitmapFromHICON)
      paGdipCreateHICONFromBitmap         = winapi::GetProcAddress(SELF.hDll, szGdipCreateHICONFromBitmap)
      paGdipCreateBitmapFromResource      = winapi::GetProcAddress(SELF.hDll, szGdipCreateBitmapFromResource)
      paGdipCloneBitmapArea               = winapi::GetProcAddress(SELF.hDll, szGdipCloneBitmapArea)
      
      paGdipGetImageGraphicsContext       = winapi::GetProcAddress(SELF.hDll, szGdipGetImageGraphicsContext)
      paGdipDeleteGraphics                = winapi::GetProcAddress(SELF.hDll, szGdipDeleteGraphics)

    ELSE
      printd('[GdiPlus] TGdiPlusInitializer.Construct: Cannot load GdiPlus APIs.')
    END
  ELSE
    printd('[GdiPlus] TGdiPlusInitializer.Construct: LoadLibrary(%Z) failed, error %i', GP_DLLNAME, winapi::GetLastError())
  END
  
  IF SELF.bInitialized = TRUE
    SELF.Startup()
  END

TGdiPlusInitializer.Destruct  PROCEDURE()
  CODE
  IF SELF.token
    SELF.Shutdown()
  END
  
  IF SELF.hDll
    winapi::FreeLibrary(SELF.hDll)
    SELF.hDll = 0
    SELF.bInitialized = FALSE
  END
  
TGdiPlusInitializer.Startup   PROCEDURE()
input                           LIKE(tagGdiplusStartupInput)
err                             GpStatus, AUTO
  CODE
  input.GdiplusVersion = 1
  input.DebugEventCallback = 0
  input.SuppressBackgroundThread = FALSE
  input.SuppressExternalCodecs = FALSE
  err = gp::Startup(SELF.token, ADDRESS(input), 0)
  GdipReportError('TGdiPlusInitializer.Startup', err)
  RETURN err

TGdiPlusInitializer.Shutdown  PROCEDURE()
  CODE
  gp::Shutdown(SELF.token)
!!!endregion
  
!!!region Helper functions
GdipReportError               PROCEDURE(STRING pMethodName, GpStatus pErr)
  CODE
  IF pErr <> GpStatus:Ok
    printd('[TGdiPlus] %s failed, error code %i', pMethodName, pErr)
  END
  
ToStream                      PROCEDURE(STRING pData)
nDataLen                        LONG, AUTO
lpStream                        LONG, AUTO
hMem                            HGDIOBJ, AUTO
pvData                          LONG
hr                              HRESULT, AUTO
  CODE
  nDataLen = SIZE(pData)
  hMem = winapi::GlobalAlloc(GMEM_MOVEABLE, nDataLen)
  IF hMem
    pvData = winapi::GlobalLock(hMem)
    IF pvData
      winapi::memcpy(pvData, ADDRESS(pData), nDataLen)
      winapi::GlobalUnlock(hMem)

      hr = winapi::CreateStreamOnHGlobal(hMem, FALSE, ADDRESS(lpStream))
      IF hr <> S_OK
        printd('CreateStreamOnHGlobal error %x', hr)
      END
    ELSE
      printd('GlobalLock error %i', winapi::GetLastError())
    END
    
    winapi::GlobalFree(hMem)
  ELSE
    printd('GlobalAlloc error %i', winapi::GetLastError())
  END
  
  RETURN lpStream
  
GetEncoderClsid               PROCEDURE(STRING pFormat, *_CLSID pClsId)
num                             ULONG(0)
bytes                           ULONG(0)
codecInfo                       LIKE(GpImageCodecInfo)
codecInfoSize                   ULONG, AUTO
buf                             &STRING, AUTO
i                               LONG, AUTO
enc                             TStringEncoding
mimeTypeW                       &STRING, AUTO
mimeTypeStrLen                  LONG, AUTO
mimeTypeA                       STRING(20), AUTO
ret                             BOOL(FALSE)
  CODE
  gp::GetImageEncodersSize(num, bytes)
  IF bytes = 0
    !- Failure
    RETURN FALSE
  END
  
  !- get a list of encoders
  buf &= NEW STRING(bytes)
  gp::GetImageEncoders(num, bytes, ADDRESS(buf))
  
  !- loop thru each encoder
  codecInfoSize = SIZE(codecInfo)
  LOOP i=1 TO num
    !- read next encoder
    codecInfo = SUB(buf, (i-1)*codecInfoSize + 1, codecInfoSize)
    
    !- get mime type (WCHAR*)
    mimeTypeStrLen = lstrlenW(codecInfo.MimeType)
!    mimeTypeW &= (codecInfo.MimeType) &':'& mimeTypeStrLen
    mimeTypeW &= NEW STRING(mimeTypeStrLen*2+2)
    winapi::memcpy(ADDRESS(mimeTypeW), codecInfo.MimeType, mimeTypeStrLen*2+2)
    mimeTypeA = enc.FromUtf16(mimeTypeW)
    DISPOSE(mimeTypeW)
    
    !- compare mime type against passed format
    IF LOWER(pFormat) = mimeTypeA
      !- Success
      pClsId = codecInfo.Clsid
      ret = TRUE
    END
  END

  !- Failure
  DISPOSE(buf)
  RETURN ret

GetFileMimeType               PROCEDURE(STRING pFileName)
nameLen                         LONG, AUTO
dotpos                          LONG, AUTO
sExtension                      STRING(256), AUTO
  CODE
  nameLen = LEN(CLIP(pFileName))
  dotpos = INSTRING('.', pFileName, -1, nameLen)
  IF NOT dotpos
    RETURN ''
  END
  sExtension = LOWER(pFileName[dotpos+1 : nameLen])
  CASE sExtension
  OF 'bmp'
    RETURN 'image/bmp'
  OF 'jpg'
    RETURN 'image/jpeg'
  OF 'gif'
    RETURN 'image/gif'
  OF 'tif'
    RETURN 'image/tiff'
  OF 'png'
    RETURN 'image/png'
  END
  RETURN ''
!!!endregion
  
!!!region TGdiPlusImage
TGdiPlusImage.Construct       PROCEDURE()
  CODE
  
TGdiPlusImage.Destruct        PROCEDURE()
  CODE
  SELF.DisposeImage()
  
TGdiPlusImage.GetLastStatus   PROCEDURE()
  CODE
  RETURN SELF.lastResult
  
TGdiPlusImage.FromFile        PROCEDURE(STRING pFileName, BOOL pUseICM=FALSE)
enc                             TStringEncoding
wstr                            STRING(FILE:MaxFilePath*2+2)
  CODE
  SELF.nativeImage = 0
  wstr = enc.ToCWStr(LONGPATH(pFileName))
  IF pUseICM
    SELF.lastResult = gp::LoadImageFromFileICM(ADDRESS(wstr), SELF.nativeImage)
  ELSE
    SELF.lastResult = gp::LoadImageFromFile(ADDRESS(wstr), SELF.nativeImage)
  END
  GdipReportError(printf('TGdiPlusImage.FromFile(%S, %b)', pFileName, pUseICM), SELF.lastResult)
  RETURN SELF.lastResult
  
TGdiPlusImage.FromString      PROCEDURE(STRING pImageData, BOOL pUseICM=FALSE)
lpStream                        LONG, AUTO
stream                          &IStream, AUTO
  CODE
  SELF.nativeImage = 0
  lpStream = ToStream(pImageData)
  IF lpStream
    stream &= (lpStream)
    IF pUseICM
      SELF.lastResult = gp::LoadImageFromStreamICM(lpStream, SELF.nativeImage)
    ELSE
      SELF.lastResult = gp::LoadImageFromStream(lpStream, SELF.nativeImage)
    END
    stream.Release()
    GdipReportError('TGdiPlusImage.FromString', SELF.lastResult)
  END
  RETURN SELF.lastResult
      
TGdiPlusImage.Save            PROCEDURE(STRING pFileName, <STRING pFormat>)
enc                             TStringEncoding
wstr                            STRING(FILE:MaxFilePath*2+2)
sMimeType                       STRING(20), AUTO
clsid                           LIKE(_CLSID), AUTO
  CODE
  !- convert filename to UTF-16
  wstr = enc.ToCWStr(LONGPATH(pFileName))

  !- get encoder
  IF pFormat
    sMimeType = pFormat
  ELSE
    sMimeType = GetFileMimeType(pFileName)
  END
  
  CLEAR(clsid)
  GetEncoderClsid(sMimeType, clsid)
  
  SELF.lastResult = gp::SaveImageToFile(SELF.nativeImage, ADDRESS(wstr), ADDRESS(clsid), 0)
  GdipReportError(printf('TGdiPlusImage.ToFile(%S, %S)', pFileName, pFormat), SELF.lastResult)
  RETURN SELF.lastResult

TGdiPlusImage.ToString        PROCEDURE(STRING pFormat)
lpStream                        LONG, AUTO
stream                          &IStream, AUTO
clsid                           LIKE(_CLSID), AUTO
hr                              HRESULT, AUTO
statstg                         LIKE(tagSTATSTG), AUTO
nDataLen                        ULONG, AUTO
nBytesRead                      LONG, AUTO
sImageData                      &STRING
  CODE
  !- get encoder
  CLEAR(clsid)
  GetEncoderClsid(pFormat, clsid)
  
  !- create IStream
  lpStream = ToStream(' ')
  IF lpStream
    !- save image to stream
    SELF.lastResult = gp::SaveImageToStream(SELF.nativeImage, lpStream, ADDRESS(clsid), 0)
    GdipReportError(printf('TGdiPlusImage.ToString(%S)', pFormat), SELF.lastResult)
    
    stream &= (lpStream)
    
    !- get stream size
    hr = stream.Stat(ADDRESS(statstg), STATFLAG_NONAME)
    IF hr = S_OK
      nDataLen = statstg.cbSize.LowPart   !- assume the stream is not too big and doesn't exceed ULONG size
      
      !- create data buffer
      sImageData &= NEW STRING(nDataLen)
      
      !- seek to the start of the stream
      hr = stream.Seek(0, 0, STREAM_SEEK_SET, 0)
      IF hr = S_OK
        !- read to the buffer
        hr = stream.Read(ADDRESS(sImageData), nDataLen, nBytesRead)
        IF hr = S_OK
          !nDataLen must be equal to nBytesRead
          !printd('IStream.Read requested %i bytes, read %i bytes', nDataLen, nBytesRead)
        ELSE
          printd('IStream.Read error 0x%x', hr)
        END
      ELSE
        printd('IStream.Seek error 0x%x', hr)
      END
    ELSE
      printd('IStream.Stat error 0x%x', hr)
    END
    
    stream.Release()
  END
  
  RETURN sImageData
  
TGdiPlusImage.Clone           PROCEDURE()
cloneImage                      &TGdiPlusImage
  CODE
  cloneImage &= NEW TGdiPlusImage
  IF SELF.Clone(cloneImage) <> GpStatus:Ok
    DISPOSE(cloneImage)
    cloneImage &= NULL
  END
  RETURN cloneImage

TGdiPlusImage.Clone           PROCEDURE(*TGdiPlusImage pCloneImage)
  CODE
  SELF.lastResult = gp::CloneImage(SELF.nativeImage, pCloneImage.nativeImage)
  GdipReportError('TGdiPlusImage.Clone', SELF.lastResult)
  pCloneImage.lastResult = SELF.lastResult
  RETURN SELF.lastResult

TGdiPlusImage.GetThumbnailImage   PROCEDURE(ULONG pThumbWidth, ULONG pThumbHeight)
thumbImage                          &TGdiPlusImage
  CODE
  thumbImage &= NEW TGdiPlusImage
  SELF.GetThumbnailImage(pThumbWidth, pThumbHeight, thumbImage)
  RETURN thumbImage
  
TGdiPlusImage.GetThumbnailImage   PROCEDURE(ULONG pThumbWidth, ULONG pThumbHeight, *TGdiPlusImage pThumbImage)
  CODE
  SELF.lastResult = gp::GetImageThumbnail(SELF.nativeImage, pThumbWidth, pThumbHeight, pThumbImage.nativeImage, 0, 0)
  GdipReportError('TGdiPlusImage.GetThumbnailImage', SELF.lastResult)
  pThumbImage.lastResult = SELF.lastResult
  RETURN SELF.lastResult

TGdiPlusImage.DisposeImage    PROCEDURE()
  CODE
  IF SELF.nativeImage
    SELF.lastResult = gp::DisposeImage(SELF.nativeImage)
    SELF.nativeImage = 0
    GdipReportError('TGdiPlusImage.DisposeImage', SELF.lastResult)
  END
  RETURN SELF.lastResult
 
TGdiPlusImage.GetWidth        PROCEDURE()
w                               ULONG(0)
  CODE
  SELF.lastResult = gp::GetImageWidth(SELF.nativeImage, w)
  GdipReportError('TGdiPlusImage.GetWidth', SELF.lastResult)
  RETURN w

TGdiPlusImage.GetHeight       PROCEDURE()
h                               ULONG(0)
  CODE
  SELF.lastResult = gp::GetImageHeight(SELF.nativeImage, h)
  GdipReportError('TGdiPlusImage.GetHeight', SELF.lastResult)
  RETURN h

TGdiPlusImage.GetHorizontalResolution PROCEDURE()
resolution                              SREAL(0.0)
  CODE
  SELF.lastResult = gp::GetImageHorizontalResolution(SELF.nativeImage, resolution)
  GdipReportError('TGdiPlusImage.GetHorizontalResolution', SELF.lastResult)
  RETURN resolution
  
TGdiPlusImage.GetVerticalResolution   PROCEDURE()
resolution                              SREAL(0.0)
  CODE
  SELF.lastResult = gp::GetImageVerticalResolution(SELF.nativeImage, resolution)
  GdipReportError('TGdiPlusImage.GetVerticalResolution', SELF.lastResult)
  RETURN resolution

TGdiPlusImage.GetBounds       PROCEDURE(*GpRectF pRect, *GpUnit pUnit)
  CODE
  SELF.lastResult = gp::GetImageBounds(SELF.nativeImage, ADDRESS(pRect), ADDRESS(pUnit))
  GdipReportError('TGdiPlusImage.GetBounds', SELF.lastResult)
  RETURN SELF.lastResult
  
TGdiPlusImage.GetPhysicalDimension    PROCEDURE(*GpSizeF pSize)
w                                       SREAL, AUTO
h                                       SREAL, AUTO
  CODE
  SELF.lastResult = gp::GetImageDimension(SELF.nativeImage, w, h)
  GdipReportError('TGdiPlusImage.GetPhysicalDimension', SELF.lastResult)
  pSize.cx = w
  pSize.cy = h
  RETURN SELF.lastResult
  
TGdiPlusImage.GetType         PROCEDURE()
imgType                         GpImageType(GpImageType:Unknown)
  CODE
  SELF.lastResult = gp::GetImageType(SELF.nativeImage, imgType)
  GdipReportError('TGdiPlusImage.GetType', SELF.lastResult)
  RETURN imgType
  
TGdiPlusImage.GetFlags        PROCEDURE()
flags                           ULONG(0)
  CODE
  SELF.lastResult = gp::GetImageFlags(SELF.nativeImage, flags)
  GdipReportError('TGdiPlusImage.GetFlags', SELF.lastResult)
  RETURN flags
  
TGdiPlusImage.GetRawFormat    PROCEDURE(*GUID pGuid)
  CODE
  CLEAR(pGuid, -1)
  SELF.lastResult = gp::GetImageRawFormat(SELF.nativeImage, ADDRESS(pGuid))
  GdipReportError('TGdiPlusImage.GetRawFormat', SELF.lastResult)
  RETURN SELF.lastResult
  
TGdiPlusImage.GetPixelFormat  PROCEDURE()
fmt                             GpPixelFormat(0)
  CODE
  SELF.lastResult = gp::GetImagePixelFormat(SELF.nativeImage, fmt)
  GdipReportError('TGdiPlusImage.GetPixelFormat', SELF.lastResult)
  RETURN fmt
  
TGdiPlusImage.GetPropertyCount    PROCEDURE()
nCount                              ULONG(0)
  CODE
  SELF.lastResult = gp::GetPropertyCount(SELF.nativeImage, nCount)
  GdipReportError('TGdiPlusImage.GetPropertyCount', SELF.lastResult)
  RETURN nCOunt

TGdiPlusImage.GetPropertyIdList   PROCEDURE(ULONG pNumOfProperty, *ULONG[] pList)
  CODE
  CLEAR(pList)
  SELF.lastResult = gp::GetPropertyIdList(SELF.nativeImage, pNumOfProperty, ADDRESS(pList))
  GdipReportError(printf('TGdiPlusImage.GetPropertyIdList(%i)', pNumOfProperty), SELF.lastResult)
  RETURN SELF.lastResult
    
TGdiPlusImage.GetPropertyItem PROCEDURE(ULONG pPropId, *TGdiPlusPropertyItem pItem)
propSize                        ULONG, AUTO
buf                             &STRING, AUTO
itm                             LIKE(GpPropertyItem)
  CODE
  SELF.lastResult = gp::GetPropertyItemSize(SELF.nativeImage, pPropId, propSize)
  GdipReportError(printf('TGdiPlusImage.GetPropertyItemSize(%x)', pPropId), SELF.lastResult)
  IF SELF.lastResult = GpStatus:Ok
    buf &= NEW STRING(propSize)
    SELF.lastResult = gp::GetPropertyItem(SELF.nativeImage, pPropId, propSize, ADDRESS(buf))
    GdipReportError(printf('TGdiPlusImage.GetPropertyItem(%x)', pPropId), SELF.lastResult)
    IF SELF.lastResult = GpStatus:Ok
      itm = buf
      pItem.Assign(itm)
    END
    DISPOSE(buf)
  END
  RETURN SELF.lastResult

TGdiPlusImage.SetPropertyItem PROCEDURE(GpPropertyItem pItem)
  CODE
  SELF.lastResult = gp::SetPropertyItem(SELF.nativeImage, ADDRESS(pItem))
  GdipReportError(printf('TGdiPlusImage.SetPropertyItem(%i)', pItem.id), SELF.lastResult)
  RETURN SELF.lastResult

TGdiPlusImage.SetPropertyItem PROCEDURE(TGdiPlusPropertyItem pItem)
itm                             LIKE(GpPropertyItem)
  CODE
  itm.id = pItem.GetId()
  itm.type = pItem.GetType()
  itm.length = pItem.GetLength()
  itm.refValue = pItem.GetValueAddress()
  RETURN SELF.SetPropertyItem(itm)
  
TGdiPlusImage.RemovePropertyItem  PROCEDURE(ULONG pPropId)
  CODE
  SELF.lastResult = gp::RemovePropertyItem(SELF.nativeImage, pPropId)
  GdipReportError(printf('TGdiPlusImage.RemovePropertyItem(%i)', pPropId), SELF.lastResult)
  RETURN SELF.lastResult

TGdiPlusImage.RotateFlip      PROCEDURE(GpRotateFlipType pRfType)
  CODE
  SELF.lastResult = gp::ImageRotateFlip(SELF.nativeImage, pRfType)
  GdipReportError(printf('TGdiPlusImage.RotateFlip(%i)', pRfType), SELF.lastResult)
  RETURN SELF.lastResult
!!!endregion
  
!!!region TGdiPlusPropertyItem
TGdiPlusPropertyItem.Destruct PROCEDURE()
  CODE
  SELF.Free()
  
TGdiPlusPropertyItem.Assign   PROCEDURE(GpPropertyItem pItem)
  CODE
  SELF.id = pItem.id
  SELF.length = pItem.length
  SELF.type = pItem.type
  SELF.value &= NEW CSTRING(pItem.length)
  winapi::memcpy(ADDRESS(SELF.value), pItem.refvalue, pItem.length)

TGdiPlusPropertyItem.Free     PROCEDURE()
  CODE
  IF NOT SELF.value &= NULL
    DISPOSE(SELF.value)
    SELF.value &= NULL
  END
  
TGdiPlusPropertyItem.GetId    PROCEDURE()
  CODE
  RETURN SELF.id
  
TGdiPlusPropertyItem.GetLength    PROCEDURE()
  CODE
  RETURN SELF.length
  
TGdiPlusPropertyItem.GetType  PROCEDURE()
  CODE
  RETURN SELF.type
  
TGdiPlusPropertyItem.GetArraySize PROCEDURE()
elSize                              ULONG, AUTO
  CODE
  CASE SELF.type
  OF GpPropertyTagType:ASCII
    elSize = 1
  OF GpPropertyTagType:Byte
    elSize = 1
  OF GpPropertyTagType:Short
    elSize = 2
  OF GpPropertyTagType:Long OROF GpPropertyTagType:SLONG
    elSize = 4
  OF GpPropertyTagType:Rational OROF GpPropertyTagType:SRational
    elSize = 8
  ELSE
    elSize = 1
  END
  
  RETURN SELF.length / elSize

TGdiPlusPropertyItem.GetValueAddress  PROCEDURE()
  CODE
  RETURN ADDRESS(SELF.value)
  
TGdiPlusPropertyItem.GetStringValue   PROCEDURE()
  CODE
  RETURN SELF.value
  
TGdiPlusPropertyItem.GetByteValue PROCEDURE()
v                                   BYTE, AUTO
  CODE
  winapi::memcpy(ADDRESS(v), ADDRESS(SELF.value), 1)
  RETURN v
    
TGdiPlusPropertyItem.GetShortValue    PROCEDURE()
v                                       SHORT, AUTO
  CODE
  winapi::memcpy(ADDRESS(v), ADDRESS(SELF.value), 2)
  RETURN v
    
TGdiPlusPropertyItem.GetLongValue PROCEDURE()
v                                   LONG, AUTO
  CODE
  winapi::memcpy(ADDRESS(v), ADDRESS(SELF.value), 4)
  RETURN v

TGdiPlusPropertyItem.GetRealValue PROCEDURE()
v                                   SREAL, AUTO
  CODE
  winapi::memcpy(ADDRESS(v), ADDRESS(SELF.value), 4)
  RETURN v
!!!endregion
  
!!!region TGdiPlusBitmap
TGdiPlusBitmap.FromFile       PROCEDURE(STRING pFileName, BOOL pUseICM=FALSE)
enc                             TStringEncoding
wstr                            STRING(FILE:MaxFilePath*2+2)
  CODE
  SELF.nativeImage = 0
  wstr = enc.ToCWStr(LONGPATH(pFileName))
  IF pUseICM
    SELF.lastResult = gp::CreateBitmapFromFileICM(ADDRESS(wstr), SELF.nativeImage)
  ELSE
    SELF.lastResult = gp::CreateBitmapFromFile(ADDRESS(wstr), SELF.nativeImage)
  END
  GdipReportError(printf('TGdiPlusBitmap.FromFile(%S, %b)', pFileName, pUseICM), SELF.lastResult)
  RETURN SELF.lastResult
  
TGdiPlusBitmap.FromString     PROCEDURE(STRING pImageData, BOOL pUseICM=FALSE)
lpStream                        LONG, AUTO
stream                          &IStream, AUTO
  CODE
  SELF.nativeImage = 0
  lpStream = ToStream(pImageData)
  IF lpStream
    stream &= (lpStream)
    IF pUseICM
      SELF.lastResult = gp::CreateBitmapFromStreamICM(lpStream, SELF.nativeImage)
    ELSE
      SELF.lastResult = gp::CreateBitmapFromStream(lpStream, SELF.nativeImage)
    END
    stream.Release()
    GdipReportError('TGdiPlusBitmap.FromString', SELF.lastResult)
  END
  RETURN SELF.lastResult

TGdiPlusBitmap.FromScan0      PROCEDURE(LONG pWidth, LONG pHeight, LONG pStride, GpPixelFormat pFormat, BYTE[] pScan0)
  CODE
  SELF.lastResult = gp::CreateBitmapFromScan0(pWidth, pHeight, pStride, pFormat, ADDRESS(pScan0), SELF.nativeImage)
  GdipReportError(printf('TGdiPlusBitmap.FromScan0'), SELF.lastResult)
  RETURN SELF.lastResult

TGdiPlusBitmap.CreateBitmap   PROCEDURE(LONG pWidth, LONG pHeight, GpPixelFormat pFormat)
  CODE
  SELF.lastResult = gp::CreateBitmapFromScan0(pWidth, pHeight, 0, pFormat, 0, SELF.nativeImage)
  GdipReportError(printf('TGdiPlusBitmap.FromScan0'), SELF.lastResult)
  RETURN SELF.lastResult

TGdiPlusBitmap.FromGraphics   PROCEDURE(LONG pWidth, LONG pHeight, TGdiPlusGraphics pTarget)
  CODE
  SELF.lastResult = gp::CreateBitmapFromGraphics(pWidth, pHeight, pTarget.nativeGraphics, SELF.nativeImage)
  GdipReportError(printf('TGdiPlusBitmap.FromGraphics'), SELF.lastResult)
  RETURN SELF.lastResult

TGdiPlusBitmap.FromBITMAPINFO PROCEDURE(CONST *STRING pBitmapInfo, BYTE[] pBitmapData)
  CODE
  SELF.lastResult = gp::CreateBitmapFromGdiDib(ADDRESS(pBitmapInfo), ADDRESS(pBitmapData), SELF.nativeImage)
  GdipReportError(printf('TGdiPlusBitmap.FromBITMAPINFO'), SELF.lastResult)
  RETURN SELF.lastResult

TGdiPlusBitmap.FromHBITMAP    PROCEDURE(HBITMAP pHbm, HANDLE pHpal)
  CODE
  SELF.lastResult = gp::CreateBitmapFromHBITMAP(pHbm, pHpal, SELF.nativeImage)
  GdipReportError(printf('TGdiPlusBitmap.FromHBITMAP'), SELF.lastResult)
  RETURN SELF.lastResult

TGdiPlusBitmap.GetHBITMAP     PROCEDURE(ULONG pBackground)
hbmReturn                       HBITMAP(0)
  CODE
  SELF.lastResult = gp::CreateHBITMAPFromBitmap(SELF.nativeImage, hbmReturn, pBackground)
  GdipReportError(printf('TGdiPlusBitmap.GetHBITMAP(%x)', pBackground), SELF.lastResult)
  RETURN hbmReturn

TGdiPlusBitmap.FromHICON      PROCEDURE(HICON pHicon)
  CODE
  SELF.lastResult = gp::CreateBitmapFromHICON(pHicon, SELF.nativeImage)
  GdipReportError(printf('TGdiPlusBitmap.FromHICON'), SELF.lastResult)
  RETURN SELF.lastResult

TGdiPlusBitmap.GetHICON       PROCEDURE()
hiconReturn                     HICON(0)
  CODE
  SELF.lastResult = gp::CreateHICONFromBitmap(SELF.nativeImage, hiconReturn)
  GdipReportError(printf('TGdiPlusBitmap.GetHICON'), SELF.lastResult)
  RETURN hiconReturn
  
TGdiPlusBitmap.FromResource   PROCEDURE(HINSTANCE pHInstance, STRING pBitmapName)
enc                             TStringEncoding
wstr                            STRING(FILE:MaxFilePath*2+2)
  CODE
  wstr = enc.ToCWStr(LONGPATH(pBitmapName))
  SELF.lastResult = gp::CreateBitmapFromResource(pHInstance, ADDRESS(wstr), SELF.nativeImage)
  GdipReportError(printf('TGdiPlusBitmap.FromResource(%x, %S)', pHInstance, pBitmapName), SELF.lastResult)
  RETURN SELF.lastResult

TGdiPlusBitmap.Clone          PROCEDURE(SREAL pX, SREAL pY, SREAL pWidth, SREAL pHeight, GpPixelFormat pFormat, *TGdiPlusBitmap pDstBitmap)
  CODE
  SELF.lastResult = gp::CloneBitmapArea(pX, pY, pWidth, pHeight, pFormat, SELF.nativeImage, pDstBitmap.nativeImage)
  GdipReportError(printf('TGdiPlusBitmap.Clone'), SELF.lastResult)
  RETURN SELF.lastResult

TGdiPlusBitmap.Clone          PROCEDURE(SREAL pX, SREAL pY, SREAL pWidth, SREAL pHeight, GpPixelFormat pFormat)
dstBitmap                       &TGdiPlusBitmap
  CODE
  dstBitmap &= NEW TGdiPlusBitmap
  IF SELF.Clone(pX, pY, pWidth, pHeight, pFormat, dstBitmap) <> GpStatus:Ok
    DISPOSE(dstBitmap)
    dstBitmap &= NULL
  END
  RETURN dstBitmap
  
!!!endregion

!!!region TGdiPlusGraphics
TGdiPlusGraphics.Construct    PROCEDURE()
  CODE
  
TGdiPlusGraphics.Destruct     PROCEDURE()
  CODE
  SELF.DisposeGraphics()
  
TGdiPlusGraphics.FromImage    PROCEDURE(TGdiPlusImage pImage)
  CODE
  SELF.lastResult = gp::GetImageGraphicsContext(pImage.nativeImage, SELF.nativeGraphics)
  GdipReportError('TGdiPlusGraphics.FromImage', SELF.lastResult)
  RETURN SELF.lastResult
  
TGdiPlusGraphics.DisposeGraphics  PROCEDURE()
  CODE
  SELF.lastResult = gp::DeleteGraphics(SELF.nativeGraphics)
  GdipReportError('TGdiPlusGraphics.DisposeGraphics', SELF.lastResult)
  RETURN SELF.lastResult
!!!endregion
  
!!!region TGdiPlusPixelFormat
TGdiPlusPixelFormat.PixelFormat   PROCEDURE(<GpPixelFormat pPixfmt>)
  CODE
  IF NOT OMITTED(pPixfmt)
    SELF.pixfmt = pPixfmt
  END
  RETURN SELF.pixfmt
  
TGdiPlusPixelFormat.GetSize   PROCEDURE()
  CODE
  RETURN BAND(BSHIFT(SELF.pixfmt, -8), 0ffh)
  
TGdiPlusPixelFormat.IsIndexed PROCEDURE()
  CODE
  RETURN CHOOSE(BAND(SELF.pixfmt, GpPixelFormatIndexed) <> 0)
  
TGdiPlusPixelFormat.IsAlpha   PROCEDURE()
  CODE
  RETURN CHOOSE(BAND(SELF.pixfmt, GpPixelFormatAlpha) <> 0)
  
TGdiPlusPixelFormat.IsExtended    PROCEDURE()
  CODE
  RETURN CHOOSE(BAND(SELF.pixfmt, GpPixelFormatExtended) <> 0)

TGdiPlusPixelFormat.IsCanonical   PROCEDURE()
  CODE
  RETURN CHOOSE(BAND(SELF.pixfmt, GpPixelFormatCanonical) <> 0)
!!!endregion
