.class public final Lf12;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lhg4;

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "La47;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lhg4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf12;->a:Lhg4;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lf12;->b:Ljava/util/ArrayList;

    return-void
.end method
