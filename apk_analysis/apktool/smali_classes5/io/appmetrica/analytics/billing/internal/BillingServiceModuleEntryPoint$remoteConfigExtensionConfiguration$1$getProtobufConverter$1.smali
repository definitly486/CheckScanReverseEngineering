.class public final Lio/appmetrica/analytics/billing/internal/BillingServiceModuleEntryPoint$remoteConfigExtensionConfiguration$1$getProtobufConverter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appmetrica/analytics/billing/internal/BillingServiceModuleEntryPoint$remoteConfigExtensionConfiguration$1;->getProtobufConverter()Lio/appmetrica/analytics/coreapi/internal/data/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/appmetrica/analytics/coreapi/internal/data/Converter<",
        "Lio/appmetrica/analytics/billing/internal/ServiceSideBillingConfigWrapper;",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/appmetrica/analytics/billing/internal/BillingServiceModuleEntryPoint;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/billing/internal/BillingServiceModuleEntryPoint;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/billing/internal/BillingServiceModuleEntryPoint$remoteConfigExtensionConfiguration$1$getProtobufConverter$1;->a:Lio/appmetrica/analytics/billing/internal/BillingServiceModuleEntryPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Lio/appmetrica/analytics/billing/internal/ServiceSideBillingConfigWrapper;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/billing/internal/BillingServiceModuleEntryPoint$remoteConfigExtensionConfiguration$1$getProtobufConverter$1;->fromModel(Lio/appmetrica/analytics/billing/internal/ServiceSideBillingConfigWrapper;)[B

    move-result-object p0

    return-object p0
.end method

.method public fromModel(Lio/appmetrica/analytics/billing/internal/ServiceSideBillingConfigWrapper;)[B
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/billing/internal/BillingServiceModuleEntryPoint$remoteConfigExtensionConfiguration$1$getProtobufConverter$1;->a:Lio/appmetrica/analytics/billing/internal/BillingServiceModuleEntryPoint;

    invoke-static {p0}, Lio/appmetrica/analytics/billing/internal/BillingServiceModuleEntryPoint;->access$getConfigConverter$p(Lio/appmetrica/analytics/billing/internal/BillingServiceModuleEntryPoint;)Lio/appmetrica/analytics/billing/impl/z;

    move-result-object p0

    invoke-virtual {p1}, Lio/appmetrica/analytics/billing/internal/ServiceSideBillingConfigWrapper;->getConfig$billing_release()Lio/appmetrica/analytics/billing/impl/B;

    move-result-object p1

    iget-object p0, p0, Lio/appmetrica/analytics/billing/impl/z;->a:Lio/appmetrica/analytics/billing/impl/p;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/billing/impl/p;->a(Lio/appmetrica/analytics/billing/impl/B;)Lio/appmetrica/analytics/billing/impl/r;

    move-result-object p0

    invoke-static {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object p0

    return-object p0
.end method

.method public toModel([B)Lio/appmetrica/analytics/billing/internal/ServiceSideBillingConfigWrapper;
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/billing/internal/ServiceSideBillingConfigWrapper;->Companion:Lio/appmetrica/analytics/billing/internal/ServiceSideBillingConfigWrapper$Companion;

    iget-object p0, p0, Lio/appmetrica/analytics/billing/internal/BillingServiceModuleEntryPoint$remoteConfigExtensionConfiguration$1$getProtobufConverter$1;->a:Lio/appmetrica/analytics/billing/internal/BillingServiceModuleEntryPoint;

    invoke-static {p0}, Lio/appmetrica/analytics/billing/internal/BillingServiceModuleEntryPoint;->access$getConfigConverter$p(Lio/appmetrica/analytics/billing/internal/BillingServiceModuleEntryPoint;)Lio/appmetrica/analytics/billing/impl/z;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/billing/impl/z;->a([B)Lio/appmetrica/analytics/billing/impl/B;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/billing/internal/ServiceSideBillingConfigWrapper$Companion;->toWrapper$billing_release(Lio/appmetrica/analytics/billing/impl/B;)Lio/appmetrica/analytics/billing/internal/ServiceSideBillingConfigWrapper;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/billing/internal/BillingServiceModuleEntryPoint$remoteConfigExtensionConfiguration$1$getProtobufConverter$1;->toModel([B)Lio/appmetrica/analytics/billing/internal/ServiceSideBillingConfigWrapper;

    move-result-object p0

    return-object p0
.end method
