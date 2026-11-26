.class public final Lcom/warefly/checkscan/presentation/Deeplink$a;
.super Lcom/warefly/checkscan/presentation/Deeplink;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/Deeplink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final c:Lcom/warefly/checkscan/presentation/Deeplink$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/warefly/checkscan/presentation/Deeplink$a;

    const-string v1, "add-email"

    invoke-direct {v0, v1}, Lcom/warefly/checkscan/presentation/Deeplink;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/warefly/checkscan/presentation/Deeplink$a;->c:Lcom/warefly/checkscan/presentation/Deeplink$a;

    return-void
.end method
