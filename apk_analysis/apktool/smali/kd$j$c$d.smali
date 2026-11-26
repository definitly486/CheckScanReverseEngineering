.class public final Lkd$j$c$d;
.super Lkd$j$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkd$j$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final e:Lkd$j$c$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkd$j$c$d;

    const-string v1, "HasPhone"

    invoke-direct {v0, v1}, Lkd$j$c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkd$j$c$d;->e:Lkd$j$c$d;

    return-void
.end method
