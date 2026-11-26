.class public final synthetic Lf97;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrr5;


# instance fields
.field public final synthetic b:Landroidx/room/RoomDatabase;

.field public final synthetic c:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/RoomDatabase;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf97;->b:Landroidx/room/RoomDatabase;

    iput-object p2, p0, Lf97;->c:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lxq5$a;)V
    .locals 1

    iget-object v0, p0, Lf97;->b:Landroidx/room/RoomDatabase;

    iget-object p0, p0, Lf97;->c:[Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroidx/room/RxRoom$Companion;->b(Landroidx/room/RoomDatabase;[Ljava/lang/String;Lxq5$a;)V

    return-void
.end method
