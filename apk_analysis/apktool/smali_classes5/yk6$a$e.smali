.class public final Lyk6$a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyk6$a$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyk6$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field public static final a:Lyk6$a$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyk6$a$e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyk6$a$e;->a:Lyk6$a$e;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lw56;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Not supported question type"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method
