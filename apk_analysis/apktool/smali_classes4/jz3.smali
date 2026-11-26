.class public final Ljz3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:[B


# instance fields
.field public final a:Lx86;

.field public b:[B

.field public final c:[I

.field public d:Lqi0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Ljz3;->e:[B

    return-void
.end method

.method public constructor <init>(Lx86;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljz3;->a:Lx86;

    sget-object p1, Ljz3;->e:[B

    iput-object p1, p0, Ljz3;->b:[B

    const/16 p1, 0x20

    new-array p1, p1, [I

    iput-object p1, p0, Ljz3;->c:[I

    return-void
.end method
