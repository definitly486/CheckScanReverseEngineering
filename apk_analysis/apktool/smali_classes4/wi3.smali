.class public final Lwi3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lwi3;

.field public static final e:Lwi3;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lwi3;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2}, Lwi3;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lwi3;->d:Lwi3;

    new-instance v0, Lwi3;

    const-string v1, "  "

    const/4 v2, 0x1

    const-string v3, "\n"

    invoke-direct {v0, v3, v1, v2}, Lwi3;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lwi3;->e:Lwi3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "[\r\n]*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "[ \t]*"

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lwi3;->a:Ljava/lang/String;

    iput-object p2, p0, Lwi3;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lwi3;->c:Z

    return-void

    :cond_0
    const-string p0, "Only combinations of spaces and tabs are allowed in indent."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p0, "Only combinations of \\n and \\r are allowed in newline."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    throw v1
.end method
