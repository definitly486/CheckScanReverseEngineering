.class public final Lyads/rs3;
.super Lf02;
.source "SourceFile"


# instance fields
.field public b:Lyads/fe5;

.field public c:Ljava/lang/String;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lyads/ts3;

.field public f:I


# direct methods
.method public constructor <init>(Lyads/ts3;Lf02;)V
    .locals 0

    iput-object p1, p0, Lyads/rs3;->e:Lyads/ts3;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lyads/rs3;->d:Ljava/lang/Object;

    iget p1, p0, Lyads/rs3;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lyads/rs3;->f:I

    iget-object p1, p0, Lyads/rs3;->e:Lyads/ts3;

    invoke-virtual {p1, p0}, Lyads/ts3;->a(Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
