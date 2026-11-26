.class public final Lm86;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm86$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/hookedonplay/decoviewlib/DecoView;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lm86$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hookedonplay/decoviewlib/DecoView;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm86;->a:Lcom/hookedonplay/decoviewlib/DecoView;

    sget-object p1, Lkx2;->b:Lkx2;

    iput-object p1, p0, Lm86;->b:Ljava/util/List;

    return-void
.end method
