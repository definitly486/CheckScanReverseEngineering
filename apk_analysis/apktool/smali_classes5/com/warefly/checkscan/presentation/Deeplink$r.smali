.class public final Lcom/warefly/checkscan/presentation/Deeplink$r;
.super Lcom/warefly/checkscan/presentation/Deeplink;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/Deeplink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "r"
.end annotation


# static fields
.field public static final c:Lcom/warefly/checkscan/presentation/Deeplink$r;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/warefly/checkscan/presentation/Deeplink$r;

    const-string v1, "profile"

    invoke-direct {v0, v1}, Lcom/warefly/checkscan/presentation/Deeplink;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/warefly/checkscan/presentation/Deeplink$r;->c:Lcom/warefly/checkscan/presentation/Deeplink$r;

    return-void
.end method
