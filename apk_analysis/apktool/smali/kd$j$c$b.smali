.class public final Lkd$j$c$b;
.super Lkd$j$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkd$j$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final e:Lkd$j$c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkd$j$c$b;

    const-string v1, "ChangePhone"

    invoke-direct {v0, v1}, Lkd$j$c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkd$j$c$b;->e:Lkd$j$c$b;

    return-void
.end method
