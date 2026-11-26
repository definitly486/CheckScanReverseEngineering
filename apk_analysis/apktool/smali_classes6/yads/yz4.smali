.class public final Lyads/yz4;
.super Lf02;
.source "SourceFile"


# instance fields
.field public b:Lyg5;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lyads/zz4;

.field public e:I


# direct methods
.method public constructor <init>(Lyads/zz4;Lf02;)V
    .locals 0

    iput-object p1, p0, Lyads/yz4;->d:Lyads/zz4;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lyads/yz4;->c:Ljava/lang/Object;

    iget p1, p0, Lyads/yz4;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lyads/yz4;->e:I

    iget-object p1, p0, Lyads/yz4;->d:Lyads/zz4;

    invoke-virtual {p1, p0}, Lyads/zz4;->a(Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
