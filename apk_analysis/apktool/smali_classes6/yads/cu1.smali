.class public final Lyads/cu1;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# static fields
.field public static final b:Lyads/cu1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/cu1;

    invoke-direct {v0}, Lyads/cu1;-><init>()V

    sput-object v0, Lyads/cu1;->b:Lyads/cu1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
