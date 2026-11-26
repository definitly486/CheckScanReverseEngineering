.class public final synthetic Lyads/v45;
.super Lqm3;
.source "SourceFile"

# interfaces
.implements Lnl3;


# direct methods
.method public constructor <init>()V
    .locals 7

    sget-object v2, Lyads/zo;->a:Lyads/zo;

    const-string v5, "decompressBase64GzipAsString(Ljava/lang/String;)Ljava/lang/String;"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lyads/zo;

    const-string v4, "decompressBase64GzipAsString"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lyads/zo;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
