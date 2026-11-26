.class public final Lyads/ep;
.super Lf02;
.source "SourceFile"


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lyads/pp;

.field public d:I


# direct methods
.method public constructor <init>(Lyads/pp;Lf02;)V
    .locals 0

    iput-object p1, p0, Lyads/ep;->c:Lyads/pp;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lyads/ep;->b:Ljava/lang/Object;

    iget p1, p0, Lyads/ep;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lyads/ep;->d:I

    iget-object p1, p0, Lyads/ep;->c:Lyads/pp;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lyads/pp;->a(Lyads/t46;Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
