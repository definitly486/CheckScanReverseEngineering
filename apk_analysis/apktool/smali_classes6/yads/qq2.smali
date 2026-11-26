.class public final Lyads/qq2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ut4;


# instance fields
.field public final synthetic a:Lyads/rq2;


# direct methods
.method public constructor <init>(Lyads/rq2;)V
    .locals 0

    iput-object p1, p0, Lyads/qq2;->a:Lyads/rq2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    iget-object p0, p0, Lyads/qq2;->a:Lyads/rq2;

    iget-object p0, p0, Lyads/rq2;->a:Lyads/fr2;

    new-instance v0, Lyads/up2;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const-string v3, "Video load error occurred"

    const/16 v4, 0x3e9

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v9}, Lyads/up2;-><init>(ILjava/lang/Exception;Ljava/lang/String;ILjava/lang/String;ILyads/vz2;IZ)V

    invoke-virtual {p0, v0}, Lyads/fr2;->b(Lyads/zv4;)V

    return-void
.end method
