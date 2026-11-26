.class public final Lft4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lfh8;

.field public static final b:Lfh8;

.field public static final c:Lb44;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lft4$a;->f:Lft4$a;

    invoke-static {v0}, Lnm4;->b(Lll3;)Lfh8;

    move-result-object v0

    sput-object v0, Lft4;->a:Lfh8;

    sget-object v0, Lft4$b;->f:Lft4$b;

    invoke-static {v0}, Lnm4;->b(Lll3;)Lfh8;

    move-result-object v0

    sput-object v0, Lft4;->b:Lfh8;

    new-instance v0, Lb44;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb44;-><init>(I)V

    sput-object v0, Lft4;->c:Lb44;

    return-void
.end method

.method public static final a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lkotlinx/datetime/DateTimeFormatException;

    const-string v0, " from the given input: the field "

    const-string v1, " is missing"

    const-string v2, "Can not create a "

    invoke-static {v2, p1, v0, p1, v1}, Ln2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
