.class public final Lem8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lso8;


# static fields
.field public static final a:Lem8;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lem8;

    invoke-direct {v0}, Lem8;-><init>()V

    sput-object v0, Lem8;->a:Lem8;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final f()Ljava/lang/Object;
    .locals 0

    sget-object p0, Ldx6;->b:Ldx6$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Ldx6;->c:Lj1;

    invoke-virtual {p0}, Lj1;->d()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final id()Ljava/lang/Object;
    .locals 0

    sget-object p0, Ldx6;->b:Ldx6$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Ldx6;->c:Lj1;

    invoke-virtual {p0}, Lj1;->d()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
