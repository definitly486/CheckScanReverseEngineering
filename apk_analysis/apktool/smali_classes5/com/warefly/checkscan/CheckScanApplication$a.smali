.class public final Lcom/warefly/checkscan/CheckScanApplication$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/CheckScanApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/warefly/checkscan/CheckScanApplication;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "appContext"

    invoke-static {v0}, Laa4;->j(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
