.class public abstract Lyads/ra3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I

.field public static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    sget-object v0, Lwt2;->c:Lwt2$a;

    sget-object v0, Lau2;->SECONDS:Lau2;

    const/16 v1, 0xa

    invoke-static {v1, v0}, Lyt2;->e(ILau2;)J

    move-result-wide v1

    sget-object v3, Lau2;->MILLISECONDS:Lau2;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lwt2;->k(JLau2;)J

    move-result-wide v4

    const-wide/32 v6, -0x80000000

    const-wide/32 v8, 0x7fffffff

    invoke-static/range {v4 .. v9}, Lkx6;->h(JJJ)J

    move-result-wide v1

    long-to-int v1, v1

    sput v1, Lyads/ra3;->a:I

    const/16 v1, 0x1e

    invoke-static {v1, v0}, Lyt2;->e(ILau2;)J

    move-result-wide v1

    invoke-static {v1, v2, v3}, Lwt2;->k(JLau2;)J

    move-result-wide v4

    invoke-static/range {v4 .. v9}, Lkx6;->h(JJJ)J

    move-result-wide v1

    long-to-int v1, v1

    sput v1, Lyads/ra3;->b:I

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lyt2;->e(ILau2;)J

    move-result-wide v0

    invoke-static {v0, v1, v3}, Lwt2;->k(JLau2;)J

    move-result-wide v4

    invoke-static/range {v4 .. v9}, Lkx6;->h(JJJ)J

    return-void
.end method
