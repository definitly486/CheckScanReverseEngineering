.class public final Lcom/my/target/p2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/my/target/b2$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/p2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Ltk2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/target/p2$a;->b:Landroid/database/Cursor;

    return-void
.end method


# virtual methods
.method public final a()Lgga;
    .locals 11

    iget-object p0, p0, Lcom/my/target/p2$a;->b:Landroid/database/Cursor;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    const/4 v6, 0x4

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-wide/16 v9, 0x1

    cmp-long p0, v7, v9

    if-nez p0, :cond_0

    move v7, v1

    goto :goto_0

    :cond_0
    move v7, v0

    :goto_0
    invoke-static {v6}, Ltk2;->e(Ljava/lang/String;)Li7a;

    move-result-object v6

    new-instance v1, Lgga;

    invoke-direct/range {v1 .. v7}, Lgga;-><init>(JLjava/lang/String;Ljava/lang/String;Li7a;Z)V

    return-object v1
.end method

.method public final close()V
    .locals 0

    iget-object p0, p0, Lcom/my/target/p2$a;->b:Landroid/database/Cursor;

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method public final moveToNext()Z
    .locals 0

    iget-object p0, p0, Lcom/my/target/p2$a;->b:Landroid/database/Cursor;

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    return p0
.end method
