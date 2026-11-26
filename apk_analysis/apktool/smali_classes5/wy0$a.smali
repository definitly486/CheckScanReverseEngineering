.class public final Lwy0$a;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "kotlinx.coroutines.flow.CallbackFlowBuilder"
    f = "Builders.kt"
    l = {
        0x14a
    }
    m = "collectTo"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwy0;->h(Lug6;Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public l:Lug6;

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Lwy0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwy0<",
            "TT;>;"
        }
    .end annotation
.end field

.field public o:I


# direct methods
.method public constructor <init>(Lwy0;Lf02;)V
    .locals 0

    iput-object p1, p0, Lwy0$a;->n:Lwy0;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lwy0$a;->m:Ljava/lang/Object;

    iget p1, p0, Lwy0$a;->o:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lwy0$a;->o:I

    iget-object p1, p0, Lwy0$a;->n:Lwy0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lwy0;->h(Lug6;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
