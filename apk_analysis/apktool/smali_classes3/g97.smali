.class public final synthetic Lg97;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh6;


# instance fields
.field public final synthetic a:Landroidx/room/RoomDatabase;

.field public final synthetic b:Landroidx/room/RxRoom$Companion$createObservable$1$observer$1;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/RoomDatabase;Landroidx/room/RxRoom$Companion$createObservable$1$observer$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg97;->a:Landroidx/room/RoomDatabase;

    iput-object p2, p0, Lg97;->b:Landroidx/room/RxRoom$Companion$createObservable$1$observer$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lg97;->a:Landroidx/room/RoomDatabase;

    iget-object p0, p0, Lg97;->b:Landroidx/room/RxRoom$Companion$createObservable$1$observer$1;

    invoke-static {v0, p0}, Landroidx/room/RxRoom$Companion;->f(Landroidx/room/RoomDatabase;Landroidx/room/RxRoom$Companion$createObservable$1$observer$1;)V

    return-void
.end method
