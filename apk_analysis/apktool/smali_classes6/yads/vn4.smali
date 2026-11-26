.class public final Lyads/vn4;
.super Lf02;
.source "SourceFile"


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lyads/ao4;

.field public d:I


# direct methods
.method public constructor <init>(Lyads/ao4;Lf02;)V
    .locals 0

    iput-object p1, p0, Lyads/vn4;->c:Lyads/ao4;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lyads/vn4;->b:Ljava/lang/Object;

    iget p1, p0, Lyads/vn4;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lyads/vn4;->d:I

    iget-object p1, p0, Lyads/vn4;->c:Lyads/ao4;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, v0, p0}, Lyads/ao4;->a(Lyads/ao4;Landroid/content/Context;Lyads/sl5;Lyads/x54;Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
