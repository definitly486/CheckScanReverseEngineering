.class public final synthetic Lxx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:Landroid/content/ContentValues;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxx;->b:Ljava/lang/String;

    iput p2, p0, Lxx;->c:I

    iput-object p3, p0, Lxx;->d:Landroid/content/ContentValues;

    iput-object p4, p0, Lxx;->e:Ljava/lang/String;

    iput-object p5, p0, Lxx;->f:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v4, p0, Lxx;->f:[Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Landroidx/sqlite/db/SupportSQLiteDatabase;

    iget-object v0, p0, Lxx;->b:Ljava/lang/String;

    iget v1, p0, Lxx;->c:I

    iget-object v2, p0, Lxx;->d:Landroid/content/ContentValues;

    iget-object v3, p0, Lxx;->e:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->P(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;Landroidx/sqlite/db/SupportSQLiteDatabase;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
