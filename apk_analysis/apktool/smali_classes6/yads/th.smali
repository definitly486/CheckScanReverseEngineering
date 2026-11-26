.class public final Lyads/th;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcy6;


# instance fields
.field public a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/th;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getValue(Ljava/lang/Object;Lze4;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    iget-object p0, p0, Lyads/th;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;Lze4;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/view/View;

    iget-object p2, p0, Lyads/th;->a:Ljava/lang/Object;

    invoke-static {p2, p3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iput-object p3, p0, Lyads/th;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
