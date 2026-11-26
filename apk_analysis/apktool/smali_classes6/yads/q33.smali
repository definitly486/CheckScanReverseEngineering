.class public final Lyads/q33;
.super Lf02;
.source "SourceFile"


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lyads/r33;

.field public d:I


# direct methods
.method public constructor <init>(Lyads/r33;Lf02;)V
    .locals 0

    iput-object p1, p0, Lyads/q33;->c:Lyads/r33;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lyads/q33;->b:Ljava/lang/Object;

    iget p1, p0, Lyads/q33;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lyads/q33;->d:I

    iget-object p1, p0, Lyads/q33;->c:Lyads/r33;

    invoke-virtual {p1, p0}, Lyads/r33;->a(Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
