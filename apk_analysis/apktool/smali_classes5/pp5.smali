.class public final Lpp5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lrp5;

.field public b:Z

.field public c:Z

.field public final d:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lqp5;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lz68;


# direct methods
.method public constructor <init>(Lrp5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpp5;->a:Lrp5;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lpp5;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p1

    iput-object p1, p0, Lpp5;->e:Lz68;

    return-void
.end method
