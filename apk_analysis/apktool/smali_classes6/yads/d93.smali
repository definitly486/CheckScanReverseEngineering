.class public final synthetic Lyads/d93;
.super Lqm3;
.source "SourceFile"

# interfaces
.implements Lll3;


# static fields
.field public static final b:Lyads/d93;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/d93;

    invoke-direct {v0}, Lyads/d93;-><init>()V

    sput-object v0, Lyads/d93;->b:Lyads/d93;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-string v4, "<init>()V"

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-class v2, Lyads/fo4;

    const-string v3, "<init>"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lqm3;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    new-instance p0, Lyads/fo4;

    invoke-direct {p0}, Lyads/fo4;-><init>()V

    return-object p0
.end method
