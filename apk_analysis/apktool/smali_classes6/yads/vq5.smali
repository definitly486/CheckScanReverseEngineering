.class public final Lyads/vq5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/tq5;


# instance fields
.field public final synthetic a:Ljava/util/LinkedHashSet;


# direct methods
.method public constructor <init>(Ljava/util/LinkedHashSet;)V
    .locals 0

    iput-object p1, p0, Lyads/vq5;->a:Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/z00;)V
    .locals 2

    iget-object p0, p0, Lyads/vq5;->a:Ljava/util/LinkedHashSet;

    invoke-static {p0}, Lyads/zq5;->a(Ljava/util/LinkedHashSet;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DELETE FROM raw_json WHERE raw_json_id IN "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lyads/z00;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lyads/vq5;->a:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Deleting raw jsons with ids: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
