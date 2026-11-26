.class public final Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherServiceModuleEntryPoint$remoteConfigExtensionConfiguration$1$getProtobufConverter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherServiceModuleEntryPoint$remoteConfigExtensionConfiguration$1;->getProtobufConverter()Lio/appmetrica/analytics/coreapi/internal/data/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/appmetrica/analytics/coreapi/internal/data/Converter<",
        "Lio/appmetrica/analytics/adrevenue/other/internal/ServiceSideAdRevenueOtherConfigWrapper;",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherServiceModuleEntryPoint;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherServiceModuleEntryPoint;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherServiceModuleEntryPoint$remoteConfigExtensionConfiguration$1$getProtobufConverter$1;->a:Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherServiceModuleEntryPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Lio/appmetrica/analytics/adrevenue/other/internal/ServiceSideAdRevenueOtherConfigWrapper;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherServiceModuleEntryPoint$remoteConfigExtensionConfiguration$1$getProtobufConverter$1;->fromModel(Lio/appmetrica/analytics/adrevenue/other/internal/ServiceSideAdRevenueOtherConfigWrapper;)[B

    move-result-object p0

    return-object p0
.end method

.method public fromModel(Lio/appmetrica/analytics/adrevenue/other/internal/ServiceSideAdRevenueOtherConfigWrapper;)[B
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherServiceModuleEntryPoint$remoteConfigExtensionConfiguration$1$getProtobufConverter$1;->a:Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherServiceModuleEntryPoint;

    invoke-static {p0}, Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherServiceModuleEntryPoint;->access$getConfigConverter$p(Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherServiceModuleEntryPoint;)Lio/appmetrica/analytics/adrevenue/other/impl/k;

    move-result-object p0

    invoke-virtual {p1}, Lio/appmetrica/analytics/adrevenue/other/internal/ServiceSideAdRevenueOtherConfigWrapper;->getConfig$ad_revenue_other_release()Lio/appmetrica/analytics/adrevenue/other/impl/j;

    move-result-object p1

    iget-object p0, p0, Lio/appmetrica/analytics/adrevenue/other/impl/k;->a:Lio/appmetrica/analytics/adrevenue/other/impl/b;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/adrevenue/other/impl/b;->a(Lio/appmetrica/analytics/adrevenue/other/impl/j;)Lio/appmetrica/analytics/adrevenue/other/impl/c;

    move-result-object p0

    invoke-static {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object p0

    return-object p0
.end method

.method public toModel([B)Lio/appmetrica/analytics/adrevenue/other/internal/ServiceSideAdRevenueOtherConfigWrapper;
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/adrevenue/other/internal/ServiceSideAdRevenueOtherConfigWrapper;->Companion:Lio/appmetrica/analytics/adrevenue/other/internal/ServiceSideAdRevenueOtherConfigWrapper$Companion;

    iget-object p0, p0, Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherServiceModuleEntryPoint$remoteConfigExtensionConfiguration$1$getProtobufConverter$1;->a:Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherServiceModuleEntryPoint;

    invoke-static {p0}, Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherServiceModuleEntryPoint;->access$getConfigConverter$p(Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherServiceModuleEntryPoint;)Lio/appmetrica/analytics/adrevenue/other/impl/k;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/adrevenue/other/impl/k;->a([B)Lio/appmetrica/analytics/adrevenue/other/impl/j;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/adrevenue/other/internal/ServiceSideAdRevenueOtherConfigWrapper$Companion;->toWrapper$ad_revenue_other_release(Lio/appmetrica/analytics/adrevenue/other/impl/j;)Lio/appmetrica/analytics/adrevenue/other/internal/ServiceSideAdRevenueOtherConfigWrapper;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/adrevenue/other/internal/AdRevenueOtherServiceModuleEntryPoint$remoteConfigExtensionConfiguration$1$getProtobufConverter$1;->toModel([B)Lio/appmetrica/analytics/adrevenue/other/internal/ServiceSideAdRevenueOtherConfigWrapper;

    move-result-object p0

    return-object p0
.end method
