.class public final Lyads/do0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/c60;


# instance fields
.field public a:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lyads/do0;Landroid/content/DialogInterface;)V
    .locals 1

    .line 11
    iget-object p1, p0, Lyads/do0;->a:Landroid/app/Dialog;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 13
    :cond_0
    iput-object v0, p0, Lyads/do0;->a:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Dialog;)V
    .locals 1

    iput-object p1, p0, Lyads/do0;->a:Landroid/app/Dialog;

    new-instance v0, Lpt9;

    invoke-direct {v0, p0}, Lpt9;-><init>(Lyads/do0;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public final e()V
    .locals 0

    iget-object p0, p0, Lyads/do0;->a:Landroid/app/Dialog;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lyads/eo0;->a(Landroid/app/Dialog;)V

    :cond_0
    return-void
.end method
