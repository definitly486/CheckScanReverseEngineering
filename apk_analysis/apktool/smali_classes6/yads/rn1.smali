.class public final Lyads/rn1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static d:Z


# instance fields
.field public final a:Lyads/do0;

.field public final b:Lyads/qn1;

.field public final c:Lyads/go0;


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lyads/do0;

    invoke-direct {v0}, Lyads/do0;-><init>()V

    new-instance v1, Lyads/on1;

    invoke-direct {v1, v0}, Lyads/on1;-><init>(Lyads/do0;)V

    new-instance v2, Lyads/qn1;

    invoke-direct {v2, v1}, Lyads/qn1;-><init>(Lyads/on1;)V

    new-instance v1, Lyads/go0;

    invoke-direct {v1}, Lyads/go0;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/rn1;->a:Lyads/do0;

    iput-object v2, p0, Lyads/rn1;->b:Lyads/qn1;

    iput-object v1, p0, Lyads/rn1;->c:Lyads/go0;

    return-void
.end method

.method public static final a(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p0, 0x0

    .line 40
    sput-boolean p0, Lyads/rn1;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Lyads/vq0;)V
    .locals 3

    iget-object v0, p0, Lyads/rn1;->c:Lyads/go0;

    iget-object v1, p1, Lyads/vq0;->l:Lyads/pq0;

    sget v2, Lcom/yandex/mobile/ads/R$style;->MonetizationAdsInternal_FullscreenDialog:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iget-object p0, p0, Lyads/rn1;->a:Lyads/do0;

    invoke-virtual {p0, v0}, Lyads/do0;->a(Landroid/app/Dialog;)V

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    new-instance p0, Lz7a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-static {v0}, Lyads/fo0;->a(Landroid/app/Dialog;)V

    const/4 p0, 0x1

    sput-boolean p0, Lyads/rn1;->d:Z

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
