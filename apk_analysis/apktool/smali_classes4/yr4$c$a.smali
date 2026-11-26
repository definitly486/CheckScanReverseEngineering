.class public final Lyr4$c$a;
.super Lz19;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyr4$c;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz19<",
        "TF;TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lyr4$c;


# direct methods
.method public constructor <init>(Lyr4$c;Ljava/util/ListIterator;)V
    .locals 0

    iput-object p1, p0, Lyr4$c$a;->d:Lyr4$c;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Ly19;-><init>(Ljava/util/Iterator;I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)TT;"
        }
    .end annotation

    iget-object p0, p0, Lyr4$c$a;->d:Lyr4$c;

    iget-object p0, p0, Lyr4$c;->c:Llm3;

    invoke-interface {p0, p1}, Llm3;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
