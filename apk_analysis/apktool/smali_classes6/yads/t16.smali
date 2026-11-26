.class public final Lyads/t16;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# static fields
.field public static final b:Lyads/t16;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/t16;

    invoke-direct {v0}, Lyads/t16;-><init>()V

    sput-object v0, Lyads/t16;->b:Lyads/t16;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    instance-of p0, p1, Lyads/s51;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
