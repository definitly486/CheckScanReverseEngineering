.class public final Landroidx/room/Room$databaseBuilder$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/Room;->databaseBuilder$default(Landroidx/room/Room;Landroid/content/Context;Ljava/lang/String;Lll3;ILjava/lang/Object;)Landroidx/room/RoomDatabase$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/room/Room$databaseBuilder$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Laa4;->i()V

    const/4 v0, 0x0

    throw v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/room/RoomDatabase;
    .locals 0

    .line 5
    invoke-static {}, Laa4;->i()V

    const/4 p0, 0x0

    throw p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroidx/room/Room$databaseBuilder$3;->invoke()Landroidx/room/RoomDatabase;

    move-result-object p0

    return-object p0
.end method
