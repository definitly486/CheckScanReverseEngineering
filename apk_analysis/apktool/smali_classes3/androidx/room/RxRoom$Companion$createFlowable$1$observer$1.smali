.class public final Landroidx/room/RxRoom$Companion$createFlowable$1$observer$1;
.super Landroidx/room/InvalidationTracker$Observer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/RxRoom$Companion;->createFlowable(Landroidx/room/RoomDatabase;[Ljava/lang/String;)Lgg3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $emitter:Lqg3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqg3<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/String;Lqg3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lqg3<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p2, p0, Landroidx/room/RxRoom$Companion$createFlowable$1$observer$1;->$emitter:Lqg3;

    invoke-direct {p0, p1}, Landroidx/room/InvalidationTracker$Observer;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onInvalidated(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Landroidx/room/RxRoom$Companion$createFlowable$1$observer$1;->$emitter:Lqg3;

    check-cast p1, Lkg3$b;

    iget-object p1, p1, Lkg3$b;->c:Lkp7;

    invoke-virtual {p1}, Lkp7;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Landroidx/room/RxRoom$Companion$createFlowable$1$observer$1;->$emitter:Lqg3;

    sget-object p1, Landroidx/room/RxRoom;->NOTHING:Ljava/lang/Object;

    invoke-interface {p0, p1}, Lzw2;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
