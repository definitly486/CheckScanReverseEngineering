.class public final Lyads/k44;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdapterListener;


# instance fields
.field public final a:Lyads/o44;

.field public final b:Lll3;

.field public final c:Lnl3;

.field public final d:Lll3;

.field public final e:Ljava/lang/Object;

.field public final f:Landroid/content/Context;

.field public final g:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/o44;Lll3;Lnl3;Lll3;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/k44;->a:Lyads/o44;

    iput-object p3, p0, Lyads/k44;->b:Lll3;

    iput-object p4, p0, Lyads/k44;->c:Lnl3;

    iput-object p5, p0, Lyads/k44;->d:Lll3;

    iput-object p6, p0, Lyads/k44;->e:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lyads/k44;->f:Landroid/content/Context;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lyads/k44;->g:Ljava/lang/ref/WeakReference;

    return-void
.end method
