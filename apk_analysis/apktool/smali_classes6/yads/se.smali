.class public final Lyads/se;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lyads/c42;

.field public final synthetic c:Lyads/we;

.field public final synthetic d:Lyads/d42;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILyads/c42;Lyads/we;Lyads/d42;)V
    .locals 0

    iput-object p4, p0, Lyads/se;->b:Lyads/c42;

    iput-object p5, p0, Lyads/se;->c:Lyads/we;

    iput-object p6, p0, Lyads/se;->d:Lyads/d42;

    const/4 p4, 0x0

    invoke-direct {p0, p1, p2, p4, p3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public final onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->setForeignKeyConstraintsEnabled(Z)V

    return-void
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    iget-object v0, p0, Lyads/se;->b:Lyads/c42;

    iget-object p0, p0, Lyads/se;->c:Lyads/we;

    invoke-virtual {p0, p1}, Lyads/we;->a(Landroid/database/sqlite/SQLiteDatabase;)Lyads/te;

    move-result-object p0

    iget-object p1, v0, Lyads/c42;->a:Lyads/e42;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lyads/e42;->a(Lyads/te;)V

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    iget-object v0, p0, Lyads/se;->d:Lyads/d42;

    iget-object p0, p0, Lyads/se;->c:Lyads/we;

    invoke-virtual {p0, p1}, Lyads/we;->a(Landroid/database/sqlite/SQLiteDatabase;)Lyads/te;

    move-result-object p0

    iget-object p1, v0, Lyads/d42;->a:Lyads/e42;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lyads/e42;->d:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-instance v1, Lb36;

    invoke-direct {v1, p2, p3}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/v84;

    if-nez p2, :cond_1

    iget-object p2, p1, Lyads/e42;->e:Lyads/v84;

    :cond_1
    :try_start_0
    invoke-interface {p2, p0}, Lyads/v84;->a(Lyads/te;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p1, p1, Lyads/e42;->e:Lyads/v84;

    invoke-interface {p1, p0}, Lyads/v84;->a(Lyads/te;)V

    return-void
.end method
