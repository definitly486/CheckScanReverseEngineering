.class public final Lee4;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "kotlinx.serialization.json.internal.JsonTreeReader"
    f = "JsonTreeReader.kt"
    l = {
        0x16
    }
    m = "readObject"
    v = 0x2
.end annotation


# instance fields
.field public l:Lae2;

.field public m:Lfe4;

.field public n:Ljava/util/LinkedHashMap;

.field public o:Ljava/lang/String;

.field public p:I

.field public synthetic q:Ljava/lang/Object;

.field public final synthetic r:Lfe4;

.field public s:I


# direct methods
.method public constructor <init>(Lfe4;Lcd0;)V
    .locals 0

    iput-object p1, p0, Lee4;->r:Lfe4;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lee4;->q:Ljava/lang/Object;

    iget p1, p0, Lee4;->s:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lee4;->s:I

    iget-object p1, p0, Lee4;->r:Lfe4;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lfe4;->c(Lae2;Lcd0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
