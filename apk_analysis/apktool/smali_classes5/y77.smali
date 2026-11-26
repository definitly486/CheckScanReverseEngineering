.class public final Ly77;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lhw5;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ly77$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ly77;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ly77$a;

    invoke-direct {v0, p0}, Ly77$a;-><init>(Ly77;)V

    iput-object v0, p0, Ly77;->b:Ly77$a;

    return-void
.end method
