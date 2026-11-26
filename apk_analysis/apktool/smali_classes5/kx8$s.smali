.class public final enum Lkx8$s;
.super Lkx8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkx8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "ScriptDataEscapedEndTagName"

    const/16 v1, 0x1a

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Ljx8;Lea1;)V
    .locals 0

    sget-object p0, Lkx8;->ScriptDataEscaped:Lkx8;

    invoke-static {p1, p2, p0}, Lkx8;->e(Ljx8;Lea1;Lkx8;)V

    return-void
.end method
