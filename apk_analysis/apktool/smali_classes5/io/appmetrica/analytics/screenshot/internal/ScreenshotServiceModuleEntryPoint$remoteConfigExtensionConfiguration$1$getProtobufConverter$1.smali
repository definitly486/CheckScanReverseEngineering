.class public final Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint$remoteConfigExtensionConfiguration$1$getProtobufConverter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint$remoteConfigExtensionConfiguration$1;->getProtobufConverter()Lio/appmetrica/analytics/coreapi/internal/data/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/appmetrica/analytics/coreapi/internal/data/Converter<",
        "Lio/appmetrica/analytics/screenshot/internal/ServiceSideScreenshotConfigWrapper;",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint$remoteConfigExtensionConfiguration$1$getProtobufConverter$1;->a:Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Lio/appmetrica/analytics/screenshot/internal/ServiceSideScreenshotConfigWrapper;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint$remoteConfigExtensionConfiguration$1$getProtobufConverter$1;->fromModel(Lio/appmetrica/analytics/screenshot/internal/ServiceSideScreenshotConfigWrapper;)[B

    move-result-object p0

    return-object p0
.end method

.method public fromModel(Lio/appmetrica/analytics/screenshot/internal/ServiceSideScreenshotConfigWrapper;)[B
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint$remoteConfigExtensionConfiguration$1$getProtobufConverter$1;->a:Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;

    invoke-static {p0}, Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;->access$getConfigConverter$p(Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;)Lio/appmetrica/analytics/screenshot/impl/Q;

    move-result-object p0

    invoke-virtual {p1}, Lio/appmetrica/analytics/screenshot/internal/ServiceSideScreenshotConfigWrapper;->getConfig$screenshot_release()Lio/appmetrica/analytics/screenshot/impl/P;

    move-result-object p1

    iget-object p0, p0, Lio/appmetrica/analytics/screenshot/impl/Q;->a:Lio/appmetrica/analytics/screenshot/impl/F;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/screenshot/impl/F;->a(Lio/appmetrica/analytics/screenshot/impl/P;)Lio/appmetrica/analytics/screenshot/impl/A;

    move-result-object p0

    invoke-static {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object p0

    return-object p0
.end method

.method public toModel([B)Lio/appmetrica/analytics/screenshot/internal/ServiceSideScreenshotConfigWrapper;
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/screenshot/internal/ServiceSideScreenshotConfigWrapper;->Companion:Lio/appmetrica/analytics/screenshot/internal/ServiceSideScreenshotConfigWrapper$Companion;

    iget-object p0, p0, Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint$remoteConfigExtensionConfiguration$1$getProtobufConverter$1;->a:Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;

    invoke-static {p0}, Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;->access$getConfigConverter$p(Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;)Lio/appmetrica/analytics/screenshot/impl/Q;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/screenshot/impl/Q;->a([B)Lio/appmetrica/analytics/screenshot/impl/P;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/screenshot/internal/ServiceSideScreenshotConfigWrapper$Companion;->toWrapper$screenshot_release(Lio/appmetrica/analytics/screenshot/impl/P;)Lio/appmetrica/analytics/screenshot/internal/ServiceSideScreenshotConfigWrapper;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint$remoteConfigExtensionConfiguration$1$getProtobufConverter$1;->toModel([B)Lio/appmetrica/analytics/screenshot/internal/ServiceSideScreenshotConfigWrapper;

    move-result-object p0

    return-object p0
.end method
