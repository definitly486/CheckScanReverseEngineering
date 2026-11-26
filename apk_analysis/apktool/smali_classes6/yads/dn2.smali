.class public final Lyads/dn2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/wx3;


# instance fields
.field public final a:Lyads/vx3;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyads/vx3;

    invoke-direct {v0}, Lyads/vx3;-><init>()V

    iput-object v0, p0, Lyads/dn2;->a:Lyads/vx3;

    return-void
.end method


# virtual methods
.method public final a(II)Lyads/vx3;
    .locals 0

    const/4 p1, 0x0

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget-object p0, p0, Lyads/dn2;->a:Lyads/vx3;

    iput p1, p0, Lyads/vx3;->a:I

    iput p1, p0, Lyads/vx3;->b:I

    return-object p0
.end method
