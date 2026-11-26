.class public final synthetic Lyads/zq0;
.super Lqm3;
.source "SourceFile"

# interfaces
.implements Lll3;


# static fields
.field public static final b:Lyads/zq0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/zq0;

    invoke-direct {v0}, Lyads/zq0;-><init>()V

    sput-object v0, Lyads/zq0;->b:Lyads/zq0;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-string v4, "<init>()V"

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-class v2, Lyads/g65;

    const-string v3, "<init>"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lqm3;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    new-instance p0, Lyads/g65;

    invoke-direct {p0}, Lyads/g65;-><init>()V

    return-object p0
.end method
