.class public final synthetic Lnk8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Lcom/tapjoy/TJOfferwallDiscoverListener;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:F

.field public final synthetic f:F

.field public final synthetic g:F

.field public final synthetic h:F


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Lcom/tapjoy/TJOfferwallDiscoverListener;Ljava/lang/String;FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnk8;->b:Landroid/app/Activity;

    iput-object p2, p0, Lnk8;->c:Lcom/tapjoy/TJOfferwallDiscoverListener;

    iput-object p3, p0, Lnk8;->d:Ljava/lang/String;

    iput p4, p0, Lnk8;->e:F

    iput p5, p0, Lnk8;->f:F

    iput p6, p0, Lnk8;->g:F

    iput p7, p0, Lnk8;->h:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v5, p0, Lnk8;->g:F

    iget v6, p0, Lnk8;->h:F

    iget-object v0, p0, Lnk8;->b:Landroid/app/Activity;

    iget-object v1, p0, Lnk8;->c:Lcom/tapjoy/TJOfferwallDiscoverListener;

    iget-object v2, p0, Lnk8;->d:Ljava/lang/String;

    iget v3, p0, Lnk8;->e:F

    iget v4, p0, Lnk8;->f:F

    invoke-static/range {v0 .. v6}, Lcom/tapjoy/TapjoyPluginAPI;->a(Landroid/app/Activity;Lcom/tapjoy/TJOfferwallDiscoverListener;Ljava/lang/String;FFFF)V

    return-void
.end method
