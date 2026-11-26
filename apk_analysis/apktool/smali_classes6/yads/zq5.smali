.class public final Lyads/zq5;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/util/LinkedHashSet;)Ljava/lang/String;
    .locals 7

    const/4 v5, 0x0

    const/16 v6, 0x38

    const-string v1, "\', \'"

    const-string v2, "(\'"

    const-string v3, "\')"

    const/4 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lqn1;->a0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ILnl3;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/List;)Lyads/yq5;
    .locals 2

    .line 16
    new-instance v0, Los;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Los;-><init>(I)V

    .line 17
    new-instance v1, Lyads/yq5;

    invoke-direct {v1, p0, v0}, Lyads/yq5;-><init>(Ljava/util/List;Lnl3;)V

    return-object v1
.end method

.method public static final b(Ljava/util/List;)Lj59;
    .locals 8

    new-instance v0, Landroid/database/SQLException;

    const/4 v6, 0x0

    const/16 v7, 0x3f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lqn1;->a0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ILnl3;I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Insertion failed for raw jsons with ids: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
