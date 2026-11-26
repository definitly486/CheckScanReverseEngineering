.class public final Lyads/jk4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/m15;


# instance fields
.field public final synthetic a:Lyads/kk4;


# direct methods
.method public constructor <init>(Lyads/kk4;)V
    .locals 0

    iput-object p1, p0, Lyads/jk4;->a:Lyads/kk4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 14
    iget-object p0, p0, Lyads/jk4;->a:Lyads/kk4;

    .line 15
    iget-object p0, p0, Lyads/kk4;->c:Landroid/view/View;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final a(JJ)V
    .locals 6

    iget-object p0, p0, Lyads/jk4;->a:Lyads/kk4;

    iget-object v1, p0, Lyads/kk4;->c:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lyads/kk4;->a:Lyads/aa5;

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lyads/aa5;->a(Landroid/view/View;JJ)V

    :cond_0
    return-void
.end method
