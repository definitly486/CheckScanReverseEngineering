.class public final Landroidx/room/RxRoom$Companion$createObservable$1$observer$1;
.super Landroidx/room/InvalidationTracker$Observer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/RxRoom$Companion;->createObservable(Landroidx/room/RoomDatabase;[Ljava/lang/String;)Ltq5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $emitter:Lcr5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcr5<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/String;Lcr5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcr5<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p2, p0, Landroidx/room/RxRoom$Companion$createObservable$1$observer$1;->$emitter:Lcr5;

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

    iget-object p0, p0, Landroidx/room/RxRoom$Companion$createObservable$1$observer$1;->$emitter:Lcr5;

    sget-object p1, Landroidx/room/RxRoom;->NOTHING:Ljava/lang/Object;

    check-cast p0, Lxq5$a;

    invoke-virtual {p0, p1}, Lxq5$a;->onNext(Ljava/lang/Object;)V

    return-void
.end method
