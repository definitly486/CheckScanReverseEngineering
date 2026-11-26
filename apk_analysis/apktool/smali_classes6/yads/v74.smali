.class public final Lyads/v74;
.super Lf02;
.source "SourceFile"


# instance fields
.field public b:Landroid/content/Context;

.field public c:Lnl3;

.field public d:Lyads/l24;

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lyads/w74;

.field public g:I


# direct methods
.method public constructor <init>(Lyads/w74;Lf02;)V
    .locals 0

    iput-object p1, p0, Lyads/v74;->f:Lyads/w74;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lyads/v74;->e:Ljava/lang/Object;

    iget p1, p0, Lyads/v74;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lyads/v74;->g:I

    iget-object p1, p0, Lyads/v74;->f:Lyads/w74;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, p0}, Lyads/w74;->a(Lyads/w74;Landroid/content/Context;Lnl3;Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
