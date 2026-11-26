.class public abstract Lyads/v9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/r70;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lyads/wx2;

    sget-object v3, Lyads/rl5;->c:Lyads/rl5;

    const/4 v4, 0x0

    const/16 v5, 0x18

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct/range {v0 .. v5}, Lyads/wx2;-><init>(IILyads/rl5;Lyads/so;I)V

    new-instance v1, Lyads/r70;

    invoke-direct {v1, v0}, Lyads/r70;-><init>(Lyads/sl5;)V

    sput-object v1, Lyads/v9;->a:Lyads/r70;

    return-void
.end method
