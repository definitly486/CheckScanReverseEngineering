.class public abstract Lcom/warefly/checkscan/component/logger/CrashlyticsException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/component/logger/CrashlyticsException$AddShopConfirm;,
        Lcom/warefly/checkscan/component/logger/CrashlyticsException$BaseFragment;,
        Lcom/warefly/checkscan/component/logger/CrashlyticsException$CameraUnavailable;,
        Lcom/warefly/checkscan/component/logger/CrashlyticsException$ColdStart;,
        Lcom/warefly/checkscan/component/logger/CrashlyticsException$Conscrypt;,
        Lcom/warefly/checkscan/component/logger/CrashlyticsException$ErrorMessagePhone;,
        Lcom/warefly/checkscan/component/logger/CrashlyticsException$Flow;
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/warefly/checkscan/component/logger/CrashlyticsException;->b:Ljava/lang/String;

    return-void
.end method
