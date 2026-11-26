.class public final synthetic Li97;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljh3;


# instance fields
.field public final synthetic b:Landroidx/room/RoomDatabase;

.field public final synthetic c:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/RoomDatabase;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li97;->b:Landroidx/room/RoomDatabase;

    iput-object p2, p0, Li97;->c:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final subscribe(Lqg3;)V
    .locals 1

    iget-object v0, p0, Li97;->c:[Ljava/lang/String;

    check-cast p1, Lkg3$b;

    iget-object p0, p0, Li97;->b:Landroidx/room/RoomDatabase;

    invoke-static {p0, v0, p1}, Landroidx/room/RxRoom$Companion;->a(Landroidx/room/RoomDatabase;[Ljava/lang/String;Lkg3$b;)V

    return-void
.end method
