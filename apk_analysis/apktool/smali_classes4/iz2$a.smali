.class public final Liz2$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liz2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lta6;Ldb6;Ljava/lang/String;)Liz2;
    .locals 18

    move-object/from16 v0, p0

    new-instance v1, Lez0;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lez0;-><init>(Ljava/lang/Object;I)V

    new-instance v3, Lfh8;

    invoke-direct {v3, v1}, Lfh8;-><init>(Lll3;)V

    new-instance v4, Liz2;

    new-instance v7, Lt71;

    invoke-direct {v7, v2}, Lt71;-><init>(I)V

    new-instance v8, Lty2;

    const/4 v1, 0x0

    invoke-direct {v8, v1}, Lty2;-><init>(I)V

    new-instance v9, Luy2;

    invoke-direct {v9, v1}, Luy2;-><init>(I)V

    new-instance v10, Lvy2;

    invoke-direct {v10, v1}, Lvy2;-><init>(I)V

    new-instance v11, Lwy2;

    invoke-direct {v11, v0, v1}, Lwy2;-><init>(Ljava/lang/Object;I)V

    new-instance v12, Lqz1;

    invoke-direct {v12, v0, v2}, Lqz1;-><init>(Ljava/lang/Object;I)V

    new-instance v13, Lxy2;

    invoke-direct {v13, v1}, Lxy2;-><init>(I)V

    new-instance v14, Lyy2;

    move-object/from16 v0, p1

    invoke-direct {v14, v1, v0, v3}, Lyy2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sget-object v15, Lcz2;->c:Lcz2;

    new-instance v0, Ljy2;

    invoke-direct {v0, v1}, Ljy2;-><init>(I)V

    sget-object v17, Lky2;->b:Lky2;

    const-string v5, "logs"

    move-object/from16 v6, p2

    move-object/from16 v16, v0

    invoke-direct/range {v4 .. v17}, Liz2;-><init>(Ljava/lang/String;Ljava/lang/String;Lnl3;Lnl3;Lnl3;Lnl3;Lbm3;Lnl3;Lnl3;Lnl3;Lnl3;Lnl3;Lnl3;)V

    return-object v4
.end method
