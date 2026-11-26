.class public abstract Lpf6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PresentersContainer:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lih5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpf6;->a:Ljava/lang/String;

    iput-object p2, p0, Lpf6;->b:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;Lih5;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPresentersContainer;",
            "Lih5;",
            ")V"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/Object;)Lih5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPresentersContainer;)",
            "Lih5<",
            "*>;"
        }
    .end annotation
.end method
